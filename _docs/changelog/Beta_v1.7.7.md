# Beta_v1.7.7

Bug Fix: A male ruler's wife no longer shows up as "Husband" in the council. Spouse council titles (Queen, Khatun, Prince Consort, etc.) display correctly by rank and culture again.

Bug Fix: Removed heavy error.log spam that was generated whenever the council screen was open.

Bug Fix: Removed a malformed localization key (a name key containing a space) in historical_character_names that logged a parser error on every localization load.

Under the hood: The councillor_spouse council position is no longer overwritten - the base game definition applies directly, so it stays in sync with future game updates. The Aeluran Regency exclusion (the regent can't also fill the spouse seat) moved into a scripted trigger override (can_be_spouse_councillor_trigger) in spark_councillor_triggers.txt. The "Spouse and Red Sister" combined council slot is unaffected. Thanks to .fulululu for the detailed report.
