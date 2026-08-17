# New Holy Sites Might be bugged
**Tags:** CK3, Sev 2 - Severe Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1506409091415802067)
---
## Report
**666gnampf** · *2026-05-19*
i just Excervated one of the newly added asian Holy sides, it said a new holy side was discovered and even enables me to get the free reform decision, but the game doesnt account it as holy side - even though it reserves a special building slot for the great temple.
![20260519232801_1.jpg](https://cdn.discordapp.com/attachments/1506409091415802067/1506409093303369850/20260519232801_1.jpg?ex=6a84268b&is=6a82d50b&hm=851b623047635f8fe5dba9c0deb28f8bee50ba6265c161b24e365736ab8356b0&)
---

## Discussion (12 comments)

**666gnampf** · *2026-05-19*
![20260519233433_1.jpg](https://cdn.discordapp.com/attachments/1506409091415802067/1506409895304630292/20260519233433_1.jpg?ex=6a84274a&is=6a82d5ca&hm=461e5c7df297264473987f50899e320176ad72a4a2383b19d8e48ef19f050bce&)

**tugberkk** · *2026-05-30*
Seconding this

**cynicalbanana** · *2026-06-02*
Same. on my save that happened for all holy sites on china and japan

**pepperoni_6989** · *2026-06-18*
I'm seeing this too. It seems to be consistent across the same sites for me even in different saves, but whether it works varies even in the same general area. Like the one near Kaifeng works but the one near Chang'an doesn't.

**.fulululu** · *2026-07-14*
Adding to this:
- There are 69+8 Spark holy sites defined (8 of which are the 1 tomb of the dead duud, and 21 of which are visually separated from the first set)
- 69+7 are deactivated at game start (inc. the 8 versions of the 1 tomb, not inc. the `grand_portal`)
- only 47+1 (47 regular + 1 of the 8 tombs) are reactivated as part of `activate_discovered_holy_site_effect` 

This makes: 77x (total holy sites) - 48x (reactivated) - 1x (`grand_portal`) -7x (extra tombs) = 21x (left)

It seems the 21 new holy sites were not added to the effect that reactivates them

This can be manually fixed (with a touch of editing) by adding the 21 new holy sites from
`3114064450\common\on_action\spark_start_on_actions.txt` (lines 82-102)
to
`3114064450\common\scripted_effects\expedition_scripted_effects.txt` (insert them starting after line 186; i.e., after the `ruins_of_vaeldrakhor` line but before the lone `}`)
![image.png](https://cdn.discordapp.com/attachments/1506409091415802067/1526416270466093187/image.png?ex=6a83c46e&is=6a8272ee&hm=caa27266b73ee54e085167a32e8fa37eecaa6462d8fc20bafa4af5d75ee02d68&)
![image.png](https://cdn.discordapp.com/attachments/1506409091415802067/1526416270906622092/image.png?ex=6a83c46e&is=6a8272ee&hm=e48b120845f045be07ef0ef862764fd3116554a190d5ae9e5bbe1e6a8565f232&)
![image.png](https://cdn.discordapp.com/attachments/1506409091415802067/1526416271258947737/image.png?ex=6a83c46e&is=6a8272ee&hm=c51d0050192e55f151d75f0e7333d1d8190022880bcdddf798b5172d3d19f553&)

**eastpointed** · *2026-07-23*
should be fixed now, let me know if not

**cynicalbanana** · *2026-08-05*
Holy sites still not showing up, at least on Japan
![image.png](https://cdn.discordapp.com/attachments/1506409091415802067/1534566165366702090/image.png?ex=6a83c0dc&is=6a826f5c&hm=60ac7633f6a9273ceb765158ab9e9d0f976038a13b396fe354128508cf34291b&)

**rayn1959** · *2026-08-09*
I discovered 2 holy sites on expeditions, but they do not show up in the holy site faith tab. I can take the decision to reform the faith and receive the -100% reform cost buff, but cannot actually do it because there is only 1 holy site.

The sites are:
- Amgun
- Cup'pet

north of japan

**ulriquinho** · *2026-08-10*
Still not working over in SE Asia. Originally thought it was regional expeditions breaking it. This was me testing it without RE.
![Papua_New_Guinea_Holy_Site_Broken.JPG](https://cdn.discordapp.com/attachments/1506409091415802067/1536413331844239430/Papua_New_Guinea_Holy_Site_Broken.JPG?ex=6a83e1ab&is=6a82902b&hm=79865fdd2b3379d1cafd73e7a10420c6c90a056a2d46ed4a59445b0879b77bb0&)

**tugberkk** · *2026-08-11*
<@211867000505499649> tagging you becayse it doesnt seem to be resolved

**eastpointed** · *2026-08-12*
On vacation but will re-review on my return 🏖️

**ulriquinho** · *2026-08-12*
Have fun, enjoy your vacation!
