# Beta_v1.7.7

Bug Fix: A male ruler's wife no longer shows up as "Husband" in the council. Spouse council titles (Queen, Khatun, Prince Consort, etc.) display correctly by rank and culture again.

Bug Fix: Removed heavy error.log spam that was generated whenever the council screen was open.

Bug Fix: Removed a malformed localization key (a name key containing a space) in historical_character_names that logged a parser error on every localization load.

Bug Fix: Rulers no longer keep a stale religious-advisor reference after their Court Chaplain leaves office (this could mis-target holy site leases and confuse Aeluran advisor succession). The chaplain override also picked up the current base game clergy-position and minister-cleanup handling.

Bug Fix: Generated spouses and children (the Generated Families game rule) updated to the current base game logic - fixes script errors on world generation and restores nomad handling. Generated characters still receive Unified Race Framework genes.

Bug Fix: Cleaned up a batch of load-time script errors: the birth good-omen notification used a message type that no longer exists, two landless-title files were missing their AI score values (@always_primary_score / @never_primary_score), granting the Minister of Rites title called a nonexistent effect, and the Elf Finder's reset/clear logic called effects that were never defined.

Bug Fix: Temple holders under lay clergy (granted to an unlanded character, created as a local noble, or generated with the world) no longer default to the Ascended Tribal government when their culture lacks the Tribal Ascension tradition - they are now feudal as in the base game, so their holdings tax and build normally. Ascended Tribal is reached only through its ascension events. (Barons already mis-assigned in existing saves keep their government; the known console workaround still applies to them.)

Under the hood: The councillor_spouse council position is no longer overwritten - the base game definition applies directly, so it stays in sync with future game updates. The Aeluran Regency exclusion (the regent can't also fill the spouse seat) moved into a scripted trigger override (can_be_spouse_councillor_trigger) in spark_councillor_triggers.txt. The "Spouse and Red Sister" combined council slot is unaffected. Thanks to .fulululu for the detailed report.
