# Advancing to Ascended Tribal removes access to Royal Court (CK3)
**Tags:** CK3, Ongoing Issue
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1481932063950241867)
---
## Report
**seanbeag** · *2026-03-13*
When you advance to Ascended Tribal government, you lose your royal court. Your artifacts are returned to your inventory as unused and the tab for accessing the court is removed.
---

## Discussion (22 comments)

**jackdread** · *2026-03-13*
ascended tribal has just been broken since all under heaven since the devs altered how governments are coded

**seanbeag** · *2026-03-13*
That's a shame. I really only wanted access to the men at arms it allows.

**seanbeag** · *2026-04-23*
Still broke with newest update.

**radon0022** · *2026-04-24*
to solve the issue you need to edit 1 single line of code. A while back someone at Paradox decided to change how to tell the game whether a government had access to the Royal Court, and noone really knows why. You need to go in the governments folder, in the elf_government file, remove royal_court = yes form the government_rules block and add royal_court = any OUTSIDE the block.

**seanbeag** · *2026-04-26*
You beautiful person. It worked. Might be worth a hotfix <@211867000505499649> Very quick and simple.

**eastpointed** · *2026-04-26*
👀

**deeznuggz** · *2026-05-01*
what do u mean "outside the block"?

**eastpointed** · *2026-05-01*
if your patient it will be in next patch, if not here it is
![image.png](https://cdn.discordapp.com/attachments/1481932063950241867/1499870504008286419/image.png?ex=6a841802&is=6a82c682&hm=600a34f6df28521c85dbce04ac24b35b6daf324a54008e557fbd5f33f930e6c1&)

**deeznuggz** · *2026-05-01*
oooooh, gotcha thanks

**deeznuggz** · *2026-05-01*
whens the hotfix btw?

**eastpointed** · *2026-05-01*
today... tomorrow... soon™

**deeznuggz** · *2026-05-01*
will the fix work midsave

**eastpointed** · *2026-05-01*
Sadly I dont think it would, but Im not positive about it

**deeznuggz** · *2026-05-01*
what about before i take the tradition?

**eastpointed** · *2026-05-01*
Im just worried Governments are a saved thing on game start

**deeznuggz** · *2026-05-01*
Hmmm

**deeznuggz** · *2026-05-01*
Well I took the tradition, made a quick kingdom and the court thing was there on the side

**seanbeag** · *2026-05-04*
The decision to adopt feudal ways appears gone once you select Ascended Tribal. Is this intended?

**jackdread** · *2026-05-04*
well ascended tribal is considerd a type of feudal so there's no point adopting feudal if you have ascended tribal

**seanbeag** · *2026-05-04*
Thanks, I wasn't sure about that. Are you still able to build castles and all the buildings or do you give that up that by taking ascended tribal?

**jackdread** · *2026-05-04*
i think you should be able to build all types of holdings

**seanbeag** · *2026-05-05*
I had the Iglesias holding before advancing and could build the mine. After advancing the mine was no longer buildable.
