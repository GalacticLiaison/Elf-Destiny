# MAA Expanded Integration Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Port all content from Elf-Destiny-MAA-Expanded into Elf-Destiny across 13 independent, reviewable branches — one per feature system.

**Architecture:** Each task creates one git branch from `main`, copies the relevant files from the source repo, handles merges for the 3 files that already exist on `main`, commits, runs a code review, and pushes. All branches are independent and can be merged in any order.

**Tech Stack:** CK3 Paradox script (.txt), YAML localization (.yml), DDS textures, git

## Global Constraints

- Source repo: `/work/mod/Elf-Destiny-MAA-Expanded`
- Target repo: `/work/mod/Elf-Destiny`
- All branches fork from `main` — never from each other
- Run `/code-review` (superpowers:requesting-code-review skill) after every commit, before pushing
- For 3 files that overlap with `main` (`elf_maa_types.txt`, `spark_maa_types.txt`, `elf_men_at_arms_values.txt`): diff first, merge manually, never overwrite blindly
- Old `elf-destiny-maa` branch: leave untouched
- Source abbreviation used throughout: `SRC=/work/mod/Elf-Destiny-MAA-Expanded`; `TGT=/work/mod/Elf-Destiny`
- Verification shorthand used throughout: brace check = `python3 -c "t=open('FILE').read(); print('OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"`

---

### Task 1: Branch `maa/core`

Core infrastructure: vanilla DLC MAA overrides, unit definitions, modifier formats, script values, general elf MAA types, base culture files, scripted triggers, core localization.

**Files to create in target:**
- `common/men_at_arms_types/00_cultural_maa_types.txt` (new)
- `common/men_at_arms_types/00_fp3_maa_types.txt` (new)
- `common/men_at_arms_types/00_maa_types.txt` (new)
- `common/men_at_arms_types/00_regional_maa_types.txt` (new)
- `common/men_at_arms_types/01_accolade_maa_types.txt` (new)
- `common/men_at_arms_types/01_fp1_maa_types.txt` (new)
- `common/men_at_arms_types/07_ep3_maa_types.txt` (new)
- `common/men_at_arms_types/09_mpo_maa_types.txt` (new)
- `common/men_at_arms_types/10_tgp_maa_types.txt` (new)
- `common/men_at_arms_types/_men_at_arms_types.info` (new)
- `common/men_at_arms_types/other_elf_maa_types.txt` (new)
- `common/modifier_definition_formats/elf_unit_definitions.txt` (new)
- `common/script_values/elite_elf_men_at_arms_values.txt` (new)
- `common/script_values/elf_culture_values.txt` (new)
- `common/scripted_effects/elf_families_triggers.txt` (new)
- `common/culture/cultures/elf_cultures.txt` (new — MAA-Expanded version; verify no conflict with existing Elf-Destiny cultures file first)
- `history/cultures/culture_elf.txt` (new — same caveat)
- `localization/english/elf_culture_maa_l_english.yml` (new)
- `localization/english/royal_elf_bloodlines_maa_l_english.yml` (new)

**Files to merge (exist on main):**
- `common/men_at_arms_types/elf_maa_types.txt`
- `common/script_values/elf_men_at_arms_values.txt`

- [ ] **Step 1: Verify no cultures/history conflict**

```bash
diff /work/mod/Elf-Destiny/common/culture/cultures/elf_cultures.txt \
     /work/mod/Elf-Destiny-MAA-Expanded/common/culture/cultures/elf_cultures.txt 2>/dev/null \
  && echo "FILES IDENTICAL" || echo "DIFFERENCES EXIST — review before copying"

diff /work/mod/Elf-Destiny/history/cultures/culture_elf.txt \
     /work/mod/Elf-Destiny-MAA-Expanded/history/cultures/culture_elf.txt 2>/dev/null \
  && echo "FILES IDENTICAL" || echo "DIFFERENCES EXIST — review before copying"
```

If differences exist, open both files side by side and manually reconcile before proceeding.

- [ ] **Step 2: Diff the two merge-required files**

```bash
diff /work/mod/Elf-Destiny/common/men_at_arms_types/elf_maa_types.txt \
     /work/mod/Elf-Destiny-MAA-Expanded/common/men_at_arms_types/elf_maa_types.txt

diff /work/mod/Elf-Destiny/common/script_values/elf_men_at_arms_values.txt \
     /work/mod/Elf-Destiny-MAA-Expanded/common/script_values/elf_men_at_arms_values.txt
```

Read the diffs. Identify any blocks present in `main` that are absent from MAA-Expanded (content that Elf-Destiny added independently). Those blocks must be preserved in the merged result.

- [ ] **Step 3: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/core
```

- [ ] **Step 4: Copy new files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/men_at_arms_types/00_cultural_maa_types.txt"  "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/00_fp3_maa_types.txt"       "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/00_maa_types.txt"           "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/00_regional_maa_types.txt"  "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/01_accolade_maa_types.txt"  "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/01_fp1_maa_types.txt"       "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/07_ep3_maa_types.txt"       "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/09_mpo_maa_types.txt"       "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/10_tgp_maa_types.txt"       "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/_men_at_arms_types.info"    "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/other_elf_maa_types.txt"    "$TGT/common/men_at_arms_types/"
cp "$SRC/common/modifier_definition_formats/elf_unit_definitions.txt" "$TGT/common/modifier_definition_formats/"
cp "$SRC/common/script_values/elite_elf_men_at_arms_values.txt" "$TGT/common/script_values/"
cp "$SRC/common/script_values/elf_culture_values.txt"          "$TGT/common/script_values/"
cp "$SRC/common/scripted_effects/elf_families_triggers.txt"    "$TGT/common/scripted_effects/"
cp "$SRC/common/culture/cultures/elf_cultures.txt"             "$TGT/common/culture/cultures/"
cp "$SRC/history/cultures/culture_elf.txt"                     "$TGT/history/cultures/"
cp "$SRC/localization/english/elf_culture_maa_l_english.yml"           "$TGT/localization/english/"
cp "$SRC/localization/english/royal_elf_bloodlines_maa_l_english.yml"  "$TGT/localization/english/"
```

- [ ] **Step 5: Merge `elf_maa_types.txt` and `elf_men_at_arms_values.txt`**

Using the diff output from Step 2, produce a merged version of each file that includes all content from MAA-Expanded plus any blocks unique to `main`. Edit the files directly in `$TGT`. Do not simply overwrite — preserve any Elf-Destiny-specific entries.

- [ ] **Step 6: Verify files and brace balance**

```bash
TGT=/work/mod/Elf-Destiny
echo "=== File count ===" && ls "$TGT/common/men_at_arms_types/" | grep -c ""
for f in \
  "$TGT/common/men_at_arms_types/elf_maa_types.txt" \
  "$TGT/common/men_at_arms_types/other_elf_maa_types.txt" \
  "$TGT/common/modifier_definition_formats/elf_unit_definitions.txt" \
  "$TGT/common/script_values/elf_men_at_arms_values.txt" \
  "$TGT/common/script_values/elite_elf_men_at_arms_values.txt" \
  "$TGT/common/scripted_effects/elf_families_triggers.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

All files should print `OK`. Fix any mismatch before committing.

- [ ] **Step 7: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/men_at_arms_types/ common/modifier_definition_formats/elf_unit_definitions.txt \
        common/script_values/elite_elf_men_at_arms_values.txt common/script_values/elf_culture_values.txt \
        common/script_values/elf_men_at_arms_values.txt common/scripted_effects/elf_families_triggers.txt \
        common/culture/cultures/elf_cultures.txt history/cultures/culture_elf.txt \
        localization/english/elf_culture_maa_l_english.yml localization/english/royal_elf_bloodlines_maa_l_english.yml
git commit -m "feat(maa/core): add core MAA infrastructure from Elf-Destiny-MAA-Expanded

- Vanilla DLC MAA overrides (fp1, fp3, accolade, ep3, mpo, tgp)
- Elf unit modifier definitions
- Script values for MAA and culture
- General elf MAA types and other_elf MAA types
- Base culture and history files
- Core MAA localization"
```

- [ ] **Step 8: Run code review, then push**

Run `/code-review` on the current diff. Address any findings. Then:

```bash
git push -u origin maa/core
```

---

### Task 2: Branch `maa/flying-units`

Self-contained flying unit system: game concept definition, modifier definition format, modifiers localization.

**Files to create in target (all new):**
- `common/game_concepts/00_flying_units_game_concepts.txt`
- `common/modifier_definition_formats/00_flying_units_unit_definitions.txt`
- `localization/english/00_flying_units_maa_l_english.yml`
- `localization/english/modifiers/flying_units_modifiers_l_english.yml`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/flying-units
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/game_concepts/00_flying_units_game_concepts.txt"              "$TGT/common/game_concepts/"
cp "$SRC/common/modifier_definition_formats/00_flying_units_unit_definitions.txt" "$TGT/common/modifier_definition_formats/"
cp "$SRC/localization/english/00_flying_units_maa_l_english.yml"              "$TGT/localization/english/"
cp "$SRC/localization/english/modifiers/flying_units_modifiers_l_english.yml" "$TGT/localization/english/modifiers/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/game_concepts/00_flying_units_game_concepts.txt" \
  "$TGT/common/modifier_definition_formats/00_flying_units_unit_definitions.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/game_concepts/00_flying_units_game_concepts.txt \
        common/modifier_definition_formats/00_flying_units_unit_definitions.txt \
        localization/english/00_flying_units_maa_l_english.yml \
        localization/english/modifiers/flying_units_modifiers_l_english.yml
git commit -m "feat(maa/flying-units): add flying units system from Elf-Destiny-MAA-Expanded

Game concept definition, unit modifier format, and localization
for the flying units MAA system."
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/flying-units
```

---

### Task 3: Branch `maa/elven-professionalism`

Elven Professionalism system: tradition, decisions, MAA types, modifiers, scripted effects, and all localization.

**Files to create in target (all new):**
- `common/culture/traditions/elven_professionalism_tradition.txt`
- `common/decisions/elven_professionalism_decisions.txt`
- `common/men_at_arms_types/elven_professionalism_maa_types.txt`
- `common/modifiers/elven_professionalism_modifiers.txt`
- `common/scripted_effects/elven_professionalism_tradition_effects.txt`
- `localization/english/culture/traditions/elven_professionalism_traditions_l_english.yml`
- `localization/english/decisions/elven_professionalism_decisions_l_english.yml`
- `localization/english/modifiers/elven_professionalism_modifiers_l_english.yml`

- [ ] **Step 1: Create branch and any missing directories**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/elven-professionalism
mkdir -p localization/english/culture/traditions
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/culture/traditions/elven_professionalism_tradition.txt"   "$TGT/common/culture/traditions/"
cp "$SRC/common/decisions/elven_professionalism_decisions.txt"             "$TGT/common/decisions/"
cp "$SRC/common/men_at_arms_types/elven_professionalism_maa_types.txt"    "$TGT/common/men_at_arms_types/"
cp "$SRC/common/modifiers/elven_professionalism_modifiers.txt"             "$TGT/common/modifiers/"
cp "$SRC/common/scripted_effects/elven_professionalism_tradition_effects.txt" "$TGT/common/scripted_effects/"
cp "$SRC/localization/english/culture/traditions/elven_professionalism_traditions_l_english.yml" \
   "$TGT/localization/english/culture/traditions/"
cp "$SRC/localization/english/decisions/elven_professionalism_decisions_l_english.yml" \
   "$TGT/localization/english/decisions/"
cp "$SRC/localization/english/modifiers/elven_professionalism_modifiers_l_english.yml" \
   "$TGT/localization/english/modifiers/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/culture/traditions/elven_professionalism_tradition.txt" \
  "$TGT/common/decisions/elven_professionalism_decisions.txt" \
  "$TGT/common/men_at_arms_types/elven_professionalism_maa_types.txt" \
  "$TGT/common/modifiers/elven_professionalism_modifiers.txt" \
  "$TGT/common/scripted_effects/elven_professionalism_tradition_effects.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/culture/traditions/elven_professionalism_tradition.txt \
        common/decisions/elven_professionalism_decisions.txt \
        common/men_at_arms_types/elven_professionalism_maa_types.txt \
        common/modifiers/elven_professionalism_modifiers.txt \
        common/scripted_effects/elven_professionalism_tradition_effects.txt \
        localization/english/culture/traditions/elven_professionalism_traditions_l_english.yml \
        localization/english/decisions/elven_professionalism_decisions_l_english.yml \
        localization/english/modifiers/elven_professionalism_modifiers_l_english.yml
git commit -m "feat(maa/elven-professionalism): add Elven Professionalism system from MAA-Expanded

Tradition, decisions, dedicated MAA types, modifiers, scripted
effects, and full English localization."
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/elven-professionalism
```

---

### Task 4: Branch `maa/innovations`

MAA-specific culture innovations and cultural parameters localization.

**Files to create in target (all new):**
- `common/culture/innovations/elf_maa_innovations.txt`
- `localization/english/culture/elf_maa_cultural_innovations_l_english.yml`
- `localization/english/culture/elf_maa_cultural_parameters_l_english.yml`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/innovations
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/culture/innovations/elf_maa_innovations.txt"                     "$TGT/common/culture/innovations/"
cp "$SRC/localization/english/culture/elf_maa_cultural_innovations_l_english.yml" "$TGT/localization/english/culture/"
cp "$SRC/localization/english/culture/elf_maa_cultural_parameters_l_english.yml"  "$TGT/localization/english/culture/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
python3 -c "t=open('$TGT/common/culture/innovations/elf_maa_innovations.txt').read(); print('OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/culture/innovations/elf_maa_innovations.txt \
        localization/english/culture/elf_maa_cultural_innovations_l_english.yml \
        localization/english/culture/elf_maa_cultural_parameters_l_english.yml
git commit -m "feat(maa/innovations): add MAA culture innovations from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/innovations
```

---

### Task 5: Branch `maa/dynasty-legacies`

Dynasty legacies, dynasty perks, and per-culture legacy localization.

**Files to create in target (all new; directories need creating):**
- `common/dynasty_legacies/elf_dynasty_legacies.txt`
- `common/dynasty_perks/elf_dynasty_perks.txt`
- `localization/english/legacies/daelurin_legacy_l_english.yml`
- `localization/english/legacies/gwynthorn_legacy_l_english.yml`
- `localization/english/legacies/lormelis_legacy_l_english.yml`
- `localization/english/legacies/serelion_legacy_l_english.yml`
- `localization/english/legacies/thundarael_legacy_l_english.yml`
- `localization/english/legacies/valerith_legacy_l_english.yml`

- [ ] **Step 1: Create branch and missing directories**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/dynasty-legacies
mkdir -p common/dynasty_legacies common/dynasty_perks localization/english/legacies
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/dynasty_legacies/elf_dynasty_legacies.txt" "$TGT/common/dynasty_legacies/"
cp "$SRC/common/dynasty_perks/elf_dynasty_perks.txt"       "$TGT/common/dynasty_perks/"
cp "$SRC/localization/english/legacies/"*_l_english.yml    "$TGT/localization/english/legacies/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/dynasty_legacies/elf_dynasty_legacies.txt" \
  "$TGT/common/dynasty_perks/elf_dynasty_perks.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
echo "Loc files copied:" && ls /work/mod/Elf-Destiny/localization/english/legacies/ | wc -l
```

Expected: both script files `OK`, loc count = 6.

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/dynasty_legacies/ common/dynasty_perks/ localization/english/legacies/
git commit -m "feat(maa/dynasty-legacies): add dynasty legacies and perks from Elf-Destiny-MAA-Expanded

Per-culture dynasty legacies (daelurin, gwynthorn, lormelis,
serelion, thundarael, valerith) and dynasty perks."
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/dynasty-legacies
```

---

### Task 6: Branch `maa/traditions`

Culture-specific traditions, spark path tradition, tradition scripted effects, and tradition icon DDS files.

**Files to create in target:**
- `common/culture/traditions/elf_specific_cultural_traditions.txt` (new)
- `common/culture/traditions/spark_path_of_baddie.txt` (new)
- `common/scripted_effects/culture_tradition_effects.txt` (new)
- 18 DDS files in `gfx/interface/icons/culture_tradition/4-items/`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/traditions
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/culture/traditions/elf_specific_cultural_traditions.txt" "$TGT/common/culture/traditions/"
cp "$SRC/common/culture/traditions/spark_path_of_baddie.txt"             "$TGT/common/culture/traditions/"
cp "$SRC/common/scripted_effects/culture_tradition_effects.txt"           "$TGT/common/scripted_effects/"
cp "$SRC/gfx/interface/icons/culture_tradition/4-items/"*.dds            "$TGT/gfx/interface/icons/culture_tradition/4-items/"
```

- [ ] **Step 3: Verify**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/culture/traditions/elf_specific_cultural_traditions.txt" \
  "$TGT/common/culture/traditions/spark_path_of_baddie.txt" \
  "$TGT/common/scripted_effects/culture_tradition_effects.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
echo "Tradition DDS count:" && ls "$TGT/gfx/interface/icons/culture_tradition/4-items/" | grep "^tradition_" | wc -l
```

Expected: all script files `OK`, DDS count ≥ 18.

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/culture/traditions/elf_specific_cultural_traditions.txt \
        common/culture/traditions/spark_path_of_baddie.txt \
        common/scripted_effects/culture_tradition_effects.txt \
        "gfx/interface/icons/culture_tradition/4-items/"
git commit -m "feat(maa/traditions): add culture traditions and tradition icons from Elf-Destiny-MAA-Expanded

Elf-specific cultural traditions, Spark path tradition, tradition
scripted effects, and 18 culture tradition icon DDS files."
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/traditions
```

---

### Task 7: Branch `maa/expedition-events`

Three expedition activity event files and their localization.

**Files to create in target (all new):**
- `events/activities/expedition_activity/expedition_events.txt`
- `events/activities/expedition_activity/expedition_riddles.txt`
- `events/activities/expedition_activity/expedition_unique_encounters.txt`
- `localization/english/events/event_localization/expedition_l_english.yml`

Note: Check whether any of these files already exist in `$TGT/events/activities/expedition_activity/` before copying.

- [ ] **Step 1: Check for existing files and create branch**

```bash
ls /work/mod/Elf-Destiny/events/activities/expedition_activity/
```

If `expedition_events.txt`, `expedition_riddles.txt`, or `expedition_unique_encounters.txt` already exist, diff them against the MAA-Expanded versions before overwriting.

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/expedition-events
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/events/activities/expedition_activity/expedition_events.txt"          "$TGT/events/activities/expedition_activity/"
cp "$SRC/events/activities/expedition_activity/expedition_riddles.txt"         "$TGT/events/activities/expedition_activity/"
cp "$SRC/events/activities/expedition_activity/expedition_unique_encounters.txt" "$TGT/events/activities/expedition_activity/"
cp "$SRC/localization/english/events/event_localization/expedition_l_english.yml" "$TGT/localization/english/events/event_localization/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/events/activities/expedition_activity/expedition_events.txt" \
  "$TGT/events/activities/expedition_activity/expedition_riddles.txt" \
  "$TGT/events/activities/expedition_activity/expedition_unique_encounters.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add events/activities/expedition_activity/expedition_events.txt \
        events/activities/expedition_activity/expedition_riddles.txt \
        events/activities/expedition_activity/expedition_unique_encounters.txt \
        localization/english/events/event_localization/expedition_l_english.yml
git commit -m "feat(maa/expedition-events): add expedition events from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/expedition-events
```

---

### Task 8: Branch `maa/gui`

Single GUI file for MAA text icons.

**Files to create in target (new):**
- `gui/elf_maa_texticons.gui`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/gui
```

- [ ] **Step 2: Copy file**

```bash
cp /work/mod/Elf-Destiny-MAA-Expanded/gui/elf_maa_texticons.gui \
   /work/mod/Elf-Destiny/gui/
```

- [ ] **Step 3: Verify brace balance**

```bash
python3 -c "t=open('/work/mod/Elf-Destiny/gui/elf_maa_texticons.gui').read(); print('OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add gui/elf_maa_texticons.gui
git commit -m "feat(maa/gui): add MAA text icons GUI file from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/gui
```

---

### Task 9: Branch `maa/assets`

All DDS binary assets: regiment type icons and both illustration sizes. No script files.

**Files to create in target:**
- ~80 files in `gfx/interface/icons/regimenttypes/`
- ~60 files in `gfx/interface/illustrations/men_at_arms_big/`
- ~60 files in `gfx/interface/illustrations/men_at_arms_small/`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/assets
```

- [ ] **Step 2: Copy all DDS asset files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/gfx/interface/icons/regimenttypes/"*.dds              "$TGT/gfx/interface/icons/regimenttypes/"
cp "$SRC/gfx/interface/illustrations/men_at_arms_big/"*.dds   "$TGT/gfx/interface/illustrations/men_at_arms_big/"
cp "$SRC/gfx/interface/illustrations/men_at_arms_small/"*.dds "$TGT/gfx/interface/illustrations/men_at_arms_small/"
```

- [ ] **Step 3: Verify counts**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

echo "regimenttypes — src:" $(ls "$SRC/gfx/interface/icons/regimenttypes/"*.dds | wc -l) \
     "tgt:" $(ls "$TGT/gfx/interface/icons/regimenttypes/"*.dds | wc -l)
echo "maa_big — src:"       $(ls "$SRC/gfx/interface/illustrations/men_at_arms_big/"*.dds | wc -l) \
     "tgt:" $(ls "$TGT/gfx/interface/illustrations/men_at_arms_big/"*.dds | wc -l)
echo "maa_small — src:"     $(ls "$SRC/gfx/interface/illustrations/men_at_arms_small/"*.dds | wc -l) \
     "tgt:" $(ls "$TGT/gfx/interface/illustrations/men_at_arms_small/"*.dds | wc -l)
```

Target counts should be ≥ source counts (target may already have some files from `main`).

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add gfx/interface/icons/regimenttypes/ \
        gfx/interface/illustrations/men_at_arms_big/ \
        gfx/interface/illustrations/men_at_arms_small/
git commit -m "feat(maa/assets): add all MAA DDS assets from Elf-Destiny-MAA-Expanded

Regiment type icons, large illustrations, and small illustrations
for all MAA units added by the MAA Expanded mod."
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. For an assets-only commit this will be brief — reviewer should confirm no unexpected non-DDS files snuck in. Then:

```bash
git push -u origin maa/assets
```

---

### Task 10: Branch `maa/cultures-group-1` (alfar, astrion, atlareth)

MAA type definitions for the first culture group.

**Files to create in target (all new):**
- `common/men_at_arms_types/alfar_maa.txt`
- `common/men_at_arms_types/astrion_maa.txt`
- `common/men_at_arms_types/atlareth_maa.txt`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/cultures-group-1
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/men_at_arms_types/alfar_maa.txt"   "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/astrion_maa.txt" "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/atlareth_maa.txt" "$TGT/common/men_at_arms_types/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/men_at_arms_types/alfar_maa.txt" \
  "$TGT/common/men_at_arms_types/astrion_maa.txt" \
  "$TGT/common/men_at_arms_types/atlareth_maa.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/men_at_arms_types/alfar_maa.txt \
        common/men_at_arms_types/astrion_maa.txt \
        common/men_at_arms_types/atlareth_maa.txt
git commit -m "feat(maa/cultures-group-1): add alfar, astrion, atlareth MAA types from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/cultures-group-1
```

---

### Task 11: Branch `maa/cultures-group-2` (daelurin, deepwood, gwynthorn)

MAA type definitions and history culture files for the second culture group.

**Files to create in target (all new):**
- `common/men_at_arms_types/daelurin_maa_types.txt`
- `common/men_at_arms_types/deepwood_elven_maa.txt`
- `common/men_at_arms_types/gwynthorn_maa_types.txt`
- `history/cultures/elf_culture_daelurin.txt`
- `history/cultures/elf_culture_gwynthorn.txt`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/cultures-group-2
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/men_at_arms_types/daelurin_maa_types.txt" "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/deepwood_elven_maa.txt"  "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/gwynthorn_maa_types.txt" "$TGT/common/men_at_arms_types/"
cp "$SRC/history/cultures/elf_culture_daelurin.txt"        "$TGT/history/cultures/"
cp "$SRC/history/cultures/elf_culture_gwynthorn.txt"       "$TGT/history/cultures/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/men_at_arms_types/daelurin_maa_types.txt" \
  "$TGT/common/men_at_arms_types/deepwood_elven_maa.txt" \
  "$TGT/common/men_at_arms_types/gwynthorn_maa_types.txt" \
  "$TGT/history/cultures/elf_culture_daelurin.txt" \
  "$TGT/history/cultures/elf_culture_gwynthorn.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/men_at_arms_types/daelurin_maa_types.txt \
        common/men_at_arms_types/deepwood_elven_maa.txt \
        common/men_at_arms_types/gwynthorn_maa_types.txt \
        history/cultures/elf_culture_daelurin.txt \
        history/cultures/elf_culture_gwynthorn.txt
git commit -m "feat(maa/cultures-group-2): add daelurin, deepwood, gwynthorn MAA types from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/cultures-group-2
```

---

### Task 12: Branch `maa/cultures-group-3` (lormelis, romaviri, serelion)

MAA type definitions and history culture files for the third culture group.

**Files to create in target (all new):**
- `common/men_at_arms_types/lormelis_maa_types.txt`
- `common/men_at_arms_types/romaviri_maa.txt`
- `common/men_at_arms_types/serelion_maa_types.txt`
- `history/cultures/elf_culture_lormelis.txt`
- `history/cultures/elf_culture_serelion.txt`

- [ ] **Step 1: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/cultures-group-3
```

- [ ] **Step 2: Copy files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/men_at_arms_types/lormelis_maa_types.txt" "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/romaviri_maa.txt"        "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/serelion_maa_types.txt"  "$TGT/common/men_at_arms_types/"
cp "$SRC/history/cultures/elf_culture_lormelis.txt"        "$TGT/history/cultures/"
cp "$SRC/history/cultures/elf_culture_serelion.txt"        "$TGT/history/cultures/"
```

- [ ] **Step 3: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/men_at_arms_types/lormelis_maa_types.txt" \
  "$TGT/common/men_at_arms_types/romaviri_maa.txt" \
  "$TGT/common/men_at_arms_types/serelion_maa_types.txt" \
  "$TGT/history/cultures/elf_culture_lormelis.txt" \
  "$TGT/history/cultures/elf_culture_serelion.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 4: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/men_at_arms_types/lormelis_maa_types.txt \
        common/men_at_arms_types/romaviri_maa.txt \
        common/men_at_arms_types/serelion_maa_types.txt \
        history/cultures/elf_culture_lormelis.txt \
        history/cultures/elf_culture_serelion.txt
git commit -m "feat(maa/cultures-group-3): add lormelis, romaviri, serelion MAA types from Elf-Destiny-MAA-Expanded"
```

- [ ] **Step 5: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/cultures-group-3
```

---

### Task 13: Branch `maa/cultures-group-4` (thundarael, tuathan, valerith, spark)

MAA type definitions and history culture files for the fourth culture group. Includes `spark_maa_types.txt` which already exists on `main` and must be merged, not overwritten.

**Files to create in target:**
- `common/men_at_arms_types/thundarael_maa_types.txt` (new)
- `common/men_at_arms_types/tuathan_maa.txt` (new)
- `common/men_at_arms_types/valerith_maa_types.txt` (new)
- `history/cultures/elf_culture_thundarael.txt` (new)
- `history/cultures/elf_culture_valerith.txt` (new)
- `common/men_at_arms_types/spark_maa_types.txt` (**merge required**)

- [ ] **Step 1: Diff `spark_maa_types.txt`**

```bash
diff /work/mod/Elf-Destiny/common/men_at_arms_types/spark_maa_types.txt \
     /work/mod/Elf-Destiny-MAA-Expanded/common/men_at_arms_types/spark_maa_types.txt
```

Read the diff. Identify any content unique to `main` that must be preserved. Plan the manual merge.

- [ ] **Step 2: Create branch**

```bash
cd /work/mod/Elf-Destiny
git checkout main
git checkout -b maa/cultures-group-4
```

- [ ] **Step 3: Copy new files**

```bash
SRC=/work/mod/Elf-Destiny-MAA-Expanded
TGT=/work/mod/Elf-Destiny

cp "$SRC/common/men_at_arms_types/thundarael_maa_types.txt" "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/tuathan_maa.txt"           "$TGT/common/men_at_arms_types/"
cp "$SRC/common/men_at_arms_types/valerith_maa_types.txt"    "$TGT/common/men_at_arms_types/"
cp "$SRC/history/cultures/elf_culture_thundarael.txt"        "$TGT/history/cultures/"
cp "$SRC/history/cultures/elf_culture_valerith.txt"          "$TGT/history/cultures/"
```

- [ ] **Step 4: Merge `spark_maa_types.txt`**

Using the diff from Step 1, manually edit `$TGT/common/men_at_arms_types/spark_maa_types.txt` to incorporate MAA-Expanded's changes while preserving any Elf-Destiny-specific content. Do not use `cp` — edit in place.

- [ ] **Step 5: Verify brace balance**

```bash
TGT=/work/mod/Elf-Destiny
for f in \
  "$TGT/common/men_at_arms_types/thundarael_maa_types.txt" \
  "$TGT/common/men_at_arms_types/tuathan_maa.txt" \
  "$TGT/common/men_at_arms_types/valerith_maa_types.txt" \
  "$TGT/common/men_at_arms_types/spark_maa_types.txt" \
  "$TGT/history/cultures/elf_culture_thundarael.txt" \
  "$TGT/history/cultures/elf_culture_valerith.txt"
do
  python3 -c "t=open('$f').read(); print('$f:', 'OK' if t.count('{') == t.count('}') else 'MISMATCH', t.count('{'), t.count('}'))"
done
```

- [ ] **Step 6: Commit**

```bash
cd /work/mod/Elf-Destiny
git add common/men_at_arms_types/thundarael_maa_types.txt \
        common/men_at_arms_types/tuathan_maa.txt \
        common/men_at_arms_types/valerith_maa_types.txt \
        common/men_at_arms_types/spark_maa_types.txt \
        history/cultures/elf_culture_thundarael.txt \
        history/cultures/elf_culture_valerith.txt
git commit -m "feat(maa/cultures-group-4): add thundarael, tuathan, valerith, spark MAA types from Elf-Destiny-MAA-Expanded

spark_maa_types.txt manually merged to preserve existing
Elf-Destiny content."
```

- [ ] **Step 7: Run code review, then push**

Run `/code-review`. Address findings. Then:

```bash
git push -u origin maa/cultures-group-4
```
