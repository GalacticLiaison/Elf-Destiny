import re

def extract_date_scopes(block_text):
    print("[DEBUG] extract_date_scopes called")
    pattern = r'(\d{3,4})\.(\d)\.(\d)\s*=\s*\{([^}]*?)\}'
    matches = re.findall(pattern, block_text, re.DOTALL)
    print(f"[DEBUG] Found {len(matches)} date scopes")
    return [(int(m[0]), int(m[1]), int(m[2]), m[3]) for m in matches]

def find_birth_and_death_years(date_scopes):
    print("[DEBUG] find_birth_and_death_years called")
    birth_year = None
    death_year = None
    other_years = []

    for (year, month, day, content) in date_scopes:
        if 'birth = yes' in content:
            birth_year = year
            print(f"[DEBUG] Found birth year: {birth_year}")
        elif 'death = yes' in content:
            death_year = year
            print(f"[DEBUG] Found death year: {death_year}")
        else:
            other_years.append(year)
    
    if death_year is None:
        candidates = [y for y in other_years if birth_year is not None and y > birth_year]
        if candidates:
            death_year = max(candidates)
            print(f"[DEBUG] Death year missing, using max other year: {death_year}")
        else:
            death_year = (birth_year + 100) if birth_year is not None else None
            print(f"[DEBUG] Death year missing and no candidates, using birth_year + 100: {death_year}")
    
    return birth_year, death_year

def shift_all_dates(block_text, year_shift, old_birth_year, new_birth_year, old_death_year=None, new_death_year=None):
    print(f"[DEBUG] shift_all_dates called with year_shift={year_shift}")

    # Shift all date keys (YYYY.M.D = {...}) by year_shift
    def shift_date_key(match):
        old_year = int(match.group(1))
        month = match.group(2)
        day = match.group(3)
        new_year = old_year + year_shift
        return f"{new_year}.{month}.{day} = {{"

    pattern_dates = re.compile(r'(\d{3,4})\.(\d)\.(\d)\s*=\s*\{')
    shifted_text = pattern_dates.sub(shift_date_key, block_text)

    # Fix birth date key exactly
    pattern_birth_any = re.compile(r'\d{3,4}\.(\d)\.(\d)\s*=\s*\{([^}]*birth\s*=\s*yes[^}]*)\}', re.DOTALL)
    shifted_text = pattern_birth_any.sub(f"{new_birth_year}.\\1.\\2 = {{\\3}}", shifted_text)

    # Fix death date key exactly if present
    if old_death_year and new_death_year:
        pattern_death_any = re.compile(r'\d{3,4}\.(\d)\.(\d)\s*=\s*\{([^}]*death\s*=\s*yes[^}]*)\}', re.DOTALL)
        shifted_text = pattern_death_any.sub(f"{new_death_year}.\\1.\\2 = {{\\3}}", shifted_text)
    else:
        print("[DEBUG] No death year to fix")

    return shifted_text

def replace_suffixes(block_text, old_suffix, new_suffix):
    print(f"[DEBUG] replace_suffixes called: {old_suffix} -> {new_suffix}")
    def replacer(match):
        original = match.group(0)
        replaced = original.replace(f"_{old_suffix}", f"_{new_suffix}")
        print(f"[DEBUG] Replacing '{original}' -> '{replaced}'")
        return replaced
    # Replace IDs with _old_suffix only when they appear as suffixes
    pattern = re.compile(rf'(\w+_{old_suffix})')
    return pattern.sub(replacer, block_text)

def extract_suffix(block_text):
    m = re.match(r'^(\w+?)(_(\d+))?\s*=', block_text)
    suffix = m.group(3) if m and m.group(3) else None
    print(f"[DEBUG] extract_suffix found: {suffix}")
    return suffix

def extract_character_name(block_text):
    m = re.search(r'name\s*=\s*"([^"]+)"', block_text)
    name = m.group(1) if m else "Unknown"
    print(f"[DEBUG] extract_character_name found: {name}")
    return name

def split_into_blocks(text):
    print("[DEBUG] split_into_blocks called (brace counting method)")
    blocks = []
    current_block = []
    brace_level = 0
    in_block = False

    lines = text.splitlines()
    for idx, line in enumerate(lines):
        stripped = line.strip()
        if not in_block:
            if re.match(r'^\w+(_\d+)?\s*=\s*\{', stripped):
                in_block = True
                brace_level = stripped.count('{') - stripped.count('}')
                current_block = [line]
            else:
                continue
        else:
            current_block.append(line)
            brace_level += line.count('{') - line.count('}')
            if brace_level == 0:
                blocks.append('\n'.join(current_block))
                current_block = []
                in_block = False

    print(f"[DEBUG] Found {len(blocks)} character blocks by brace counting")
    return blocks

def process_character_block(block_text, old_suffix, new_suffix, base_suffix=1066, new_suffix_val=1178):
    print(f"[DEBUG] process_character_block called for suffix {old_suffix} -> {new_suffix}")

    date_scopes = extract_date_scopes(block_text)
    birth_year, death_year = find_birth_and_death_years(date_scopes)
    if birth_year is None:
        raise ValueError(f"No birth date found in block with suffix {old_suffix}")

    diff = base_suffix - birth_year
    new_birth_year = new_suffix_val - diff
    if death_year is not None:
        lifespan = death_year - birth_year
        new_death_year = new_birth_year + lifespan
    else:
        new_death_year = None

    year_shift = new_birth_year - birth_year

    print(f"[DEBUG] old birth/death: {birth_year}/{death_year}, new birth/death: {new_birth_year}/{new_death_year}")
    print(f"[DEBUG] year_shift calculated: {year_shift}")

    # Replace suffixes in IDs
    block_text = replace_suffixes(block_text, old_suffix, new_suffix)

    # Shift all date keys by year_shift, then fix birth and death to exact new years
    block_text = shift_all_dates(block_text, year_shift, birth_year, new_birth_year, death_year, new_death_year)

    return block_text, year_shift

def main_process(full_text, base_suffix=1066, new_suffix=1178):
    print("[INFO] main_process started")
    blocks = split_into_blocks(full_text)
    output_blocks = []
    processed_count = 0
    skipped_count = 0

    blocks_by_name_suffix = {}

    # Index blocks by (name, suffix)
    for block in blocks:
        char_name = extract_character_name(block)
        suffix = extract_suffix(block)
        key = (char_name, suffix)
        blocks_by_name_suffix[key] = block

    for (char_name, suffix), block in blocks_by_name_suffix.items():
        if suffix == str(base_suffix):
            print(f"[INFO] Processing base suffix block '{char_name}_{suffix}'")

            # Append original block unchanged
            output_blocks.append(block)

            date_scopes = extract_date_scopes(block)
            birth_year, _ = find_birth_and_death_years(date_scopes)
            if birth_year is None:
                print(f"[WARNING] No birth year for '{char_name}' suffix {suffix}, skipping new block creation.")
                skipped_count += 1
                continue

            try:
                new_block, _ = process_character_block(block, suffix, str(new_suffix), base_suffix=base_suffix, new_suffix_val=new_suffix)
                output_blocks.append(new_block)
                processed_count += 1
                print(f"[INFO] Created new block '{char_name}_{new_suffix}'")
            except Exception as e:
                print(f"[ERROR] Error processing '{char_name}' for new suffix {new_suffix}: {e}")
                skipped_count += 1
        else:
            # Output other blocks unchanged
            output_blocks.append(block)

    print(f"[INFO] Processing complete. Blocks processed: {processed_count}, skipped: {skipped_count}, total: {len(blocks)}")
    return "\n\n".join(output_blocks)

if __name__ == "__main__":
    input_file = "input_characters.txt"
    output_file = "output_characters.txt"

    print("[INFO] Reading input file...")
    try:
        with open(input_file, "r", encoding="utf-8") as f:
            full_text = f.read()
    except FileNotFoundError:
        print(f"[ERROR] Input file '{input_file}' not found. Please put your input in this file.")
        exit(1)

    print("[INFO] Starting processing...")
    result_text = main_process(full_text)

    print(f"[INFO] Writing output to {output_file}...")
    with open(output_file, "w", encoding="utf-8") as f:
        f.write(result_text)

    print("[INFO] Done.")