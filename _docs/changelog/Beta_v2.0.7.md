# Beta_v2.0.7

# Bugs/Balance
- Fixed a crash that hit on the same date every time in saves where a Red Sister's temple marker had gone stale (the Sister dead, replaced on her seat, or the lease ended): the marker closed itself from inside its own monthly check, which the game cannot survive. Stale markers are now flagged and closed a few days later from the rulers' quarterly pulse.
- The Aeluran Order no longer sends an Advisor to rulers whose government has no council (steppe nomads, holy orders, landless rulers): the Sister could never take her seat, and a new one was generated and sent every quarter. A Sister already on the road in an older save arrives and stays at court.
- A Matter of Land no longer tries to found a temple on a barony the ruler has lost (or one where a temple is already being founded) when its follow-up finds no other empty barony; the Sister asks for a temple to be assigned instead.
- AI entrancement toned down: AI characters attempt to entrance half as often, wait twice as long between attempts (five years, and ten before trying the same target again), and fewer of them want to in the first place. Seducers, Enchantresses, the Ambitious and close family still lead the attempts; landed rulers weigh in less than before.
- Under the Aeluran Order's government, councillors who do not meet the Order's gender rule are dismissed and leave the clergy again; the effect that does this went missing in 2.0.6 and every call logged an error.
- Three Aeluran Weaver historical characters die on their recorded dates again instead of living on into the game.
- Battle of Wills: the Aeluran Order rank difference counts again; it referenced a value that did not exist, so that part of the roll was always zero.
- Julia Melwood is created with her sexuality set, as the story intends.
- The travelling peddler's story reads the business card from the ruler who holds it instead of logging an error on every check.
- Marriage acceptance: the four rules for administrative realms apply again; they checked a government rule that 1.20 removed.
- Elven immortality: only immortal characters have their visual age pinned at 20, 30, 40, 50 and 60. Mortal elves and elf-blooded characters no longer log an error on those birthdays.
- The Valerith bloodline's and the Warg trait's scheme modifiers use their 1.20 names and apply again.
- Entrance Feast: the scheme pause during the feast now has its reason text ("the feast holds our attention"), and the feast replacement event no longer carries a flag the game rejects.
- Nefertiti's artifact event gives the Mediterranean look again.
- The yearly elven pulse closes its branches the way 1.20 requires, and elf pregnancy encouragement only targets visibly fertile characters.
- Grand Portal I and II: their monthly piety, dynasty prestige and lifestyle experience bonuses now apply to any holder of the building; 1.20 no longer supports building bonuses limited to one faith.
- Longhouses III no longer declares its build rule twice, Market Villages III has its icon, and the elven tribe holdings carry the tribe flag again, which a yearly event checks.
- Five decisions (the beauty enhancements, the main story line, entrancement and the debug menu) weight their AI use the way 1.20 expects.
- The High Matriarch's ceremonial outfit takes priority in portraits as intended.
- "Killed by a direwolf" is a proper death reason again, in English and Korean.
- The mod introduction lesson checks the decisions panel the 1.20 way.
- Several historical characters use the 1.20 trait keys for Lunatic and Viking.
- Housekeeping: dead story flags, a stale skin-colour gene entry, an empty repeating event, race concept aliases, a stray brace, file encoding markers, the Matchmaking and Base Camp activity phase icons, the Aeluran message sounds, and the header art for the entrance feast, matchmaking and expedition activities.
- Text: fixed duplicated, missing or mis-escaped lines (realm domination, Noble Wood, the Drenmyre house, the elven mortality trait, elf hostility names, the launch-an-expedition lesson, the Aeluran Sisters doctrine name, Vana and Thrandire, time formatting), and the Aeluran religious head title and death deity pronouns for female heads.
