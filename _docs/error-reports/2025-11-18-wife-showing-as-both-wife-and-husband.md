# Wife showing as both wife and husband
**Tags:** CK3, Ongoing Issue
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1440464286328557769)
---
## Report
**graly** · *2025-11-18*
found the file that causes this issue to happen, trying to fix it.
the file is in:
common\council_positions\spark_council_positions.txt

didnt find the exact line and/or fix but my lead is "desc = councillor_spouse_baron" in line 1240
---

## Discussion (10 comments)

**graly** · *2025-11-18*
looks like there is no fallback for having not having married your red sister but have a wife

**graly** · *2025-11-18*
repeatable bug behaviour: 867 bookmark and pick Aelor of Leon in brittany, he has a wife that gets called a husband too while his daughter is his red sister. if he marries her the bug persists until he makes her his primary spouse, once this happens the issue is fixed and this persists even if he makes his original wife his primary spouse again.

**sanada_yukimura_905** · *2025-11-20*
Yesterday,  I have see nearest promlem - my dinasty is rival with another and my vassal who belong rival dinasty and married on my sister tryed kill himself      0_0  ...

**markus4039** · *2025-12-23*
I have this problem too, so I canceled out the line you pointed out

**markus4039** · *2025-12-23*
Guess I'll find out if that has any negative effects though

**markus4039** · *2025-12-27*
this whole file seems cooked, i replaced the lines of code from 253 to 2095 from vanilla to here and that seems to have fixed this issue

**markus4039** · *2025-12-27*
[spark_council_positions.txt](https://cdn.discordapp.com/attachments/1440464286328557769/1454617531368210513/spark_council_positions.txt?ex=6a844264&is=6a82f0e4&hm=13e22394f4c4b5a0793165e5d6c991c3f8a60a17af78fce9d5d55ee2959761d3&)

**markus4039** · *2025-12-27*
replace the spark_council_positions.txt with this one

**venomisaacl** · *2026-01-17*
can confirm this is happening for me too when i run elf destiny

**caravaggio1111** · *2026-08-16*
Thanks for the fix, the wife as husband thing was super-irritating. East is adding your fix to the next update, I assume?
