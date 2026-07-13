# Elf Destiny MAA Expanded Integration — Design Spec

**Date:** 2026-07-13  
**Source repo:** `Elf-Destiny-MAA-Expanded` (at `/work/mod/Elf-Destiny-MAA-Expanded`)  
**Target repo:** `Elf-Destiny` (at `/work/mod/Elf-Destiny`)

---

## Goal

Integrate the full content of the Elf-Destiny-MAA-Expanded mod into the Elf-Destiny repo by creating 13 independent, reviewable branches — one per feature system. The old `elf-destiny-maa` branch is outdated and will be left as-is (not deleted, not rebased).

---

## Branch Structure

All 13 branches fork from `main`. They are independent of each other and can be reviewed and merged in any order.

| # | Branch | Contents |
|---|--------|----------|
| 1 | `maa/core` | Vanilla DLC MAA overrides (`00_fp3`, `01_accolade`, `01_fp1`, `07_ep3`, `09_mpo`, `10_tgp`, `_men_at_arms_types.info`), unit/modifier definition format (`elf_unit_definitions.txt`), script values (`elf_men_at_arms_values.txt`, `elite_elf_men_at_arms_values.txt`, `elf_culture_values.txt`), general elf MAA types (`elf_maa_types.txt`, `other_elf_maa_types.txt`), base culture files (`elf_cultures.txt`, `history/cultures/culture_elf.txt`), `elf_families_triggers.txt`, localization for core MAA (`elf_culture_maa_l_english.yml`, `royal_elf_bloodlines_maa_l_english.yml`) |
| 2 | `maa/flying-units` | `00_flying_units_game_concepts.txt`, `00_flying_units_unit_definitions.txt` (modifier definition format), `flying_units_modifiers_l_english.yml`, `00_flying_units_maa_l_english.yml` |
| 3 | `maa/elven-professionalism` | `elven_professionalism_tradition.txt`, `elven_professionalism_decisions.txt`, `elven_professionalism_maa_types.txt`, `elven_professionalism_modifiers.txt`, `elven_professionalism_tradition_effects.txt`, all elven professionalism localization |
| 4 | `maa/innovations` | `elf_maa_innovations.txt`, `elf_maa_cultural_innovations_l_english.yml`, `elf_maa_cultural_parameters_l_english.yml` |
| 5 | `maa/dynasty-legacies` | `elf_dynasty_legacies.txt`, `elf_dynasty_perks.txt`, all `localization/english/legacies/` files |
| 6 | `maa/traditions` | `elf_specific_cultural_traditions.txt`, `spark_path_of_baddie.txt`, `culture_tradition_effects.txt`, all `gfx/interface/icons/culture_tradition/4-items/` DDS files |
| 7 | `maa/expedition-events` | `expedition_events.txt`, `expedition_riddles.txt`, `expedition_unique_encounters.txt`, `expedition_l_english.yml` |
| 8 | `maa/gui` | `gui/elf_maa_texticons.gui` |
| 9 | `maa/assets` | All `gfx/interface/icons/regimenttypes/` DDS files, all `gfx/interface/illustrations/men_at_arms_big/` DDS files, all `gfx/interface/illustrations/men_at_arms_small/` DDS files |
| 10 | `maa/cultures-group-1` | alfar, astrion, atlareth — MAA type files, history culture files, legacy localization, regiment icons |
| 11 | `maa/cultures-group-2` | daelurin, deepwood, gwynthorn — MAA type files, history culture files, legacy localization, regiment icons |
| 12 | `maa/cultures-group-3` | lormelis, romaviri, serelion — MAA type files, history culture files, legacy localization, regiment icons |
| 13 | `maa/cultures-group-4` | thundarael, tuathan, valerith, spark — MAA type files, history culture files, legacy localization, regiment icons |

---

## Special Cases

### `spark_maa_types.txt`
This file already exists on `Elf-Destiny/main`. Before adding it to `maa/cultures-group-4`, diff the two versions and carry over only the changes from MAA-Expanded (rather than blindly overwriting).

### `elf_men_at_arms_values.txt`
Also exists on `Elf-Destiny/main`. Same treatment — diff and merge, don't overwrite.

### `elf_maa_types.txt`
Also exists on `Elf-Destiny/main`. Diff and merge.

### Old `elf-destiny-maa` branch
Leave it in place. It is not deleted, rebased, or referenced by any of the new branches.

---

## Branch Creation Process (per branch)

For each branch:
1. `git checkout main && git checkout -b <branch-name>`
2. Copy the relevant files from `Elf-Destiny-MAA-Expanded` into the correct paths in `Elf-Destiny`
3. For files that already exist on `main`, diff first and merge carefully
4. `git add` only the files for that branch
5. Commit with a descriptive message referencing the source mod
6. **Run `/code-review` (superpowers requesting-code-review skill) on the commit before pushing** — catch logic errors, missing loc keys, bad references, or structural issues early
7. Push to remote (`origin`)

---

## Files That Exist on Both Repos (need diff/merge)

| File | Elf-Destiny/main | MAA-Expanded |
|------|-----------------|--------------|
| `common/men_at_arms_types/elf_maa_types.txt` | exists | exists (updated) |
| `common/men_at_arms_types/spark_maa_types.txt` | exists | exists (updated) |
| `common/script_values/elf_men_at_arms_values.txt` | exists | exists (updated) |

---

## Out of Scope

- Localization for languages other than English (Korean, Spanish) — not present in MAA-Expanded
- Any changes to the `Elf-Destiny-MAA-Expanded` repo itself
- Merging any of the 13 branches into `main` (that is a separate review decision)
- Rebasing or cleaning up the old `elf-destiny-maa` branch
