# Dire Wolf Event chain doesnt progress
**Tags:** CK3, Ongoing Issue, Sev 2 - Severe Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1436179304764674098)
---
## Report
**666gnampf** · *2025-11-07*
As mentioned in the Great hall yesterday, something is utterly bonked with this event chain.

(as can be seen in the screenshots) the Event with the id wolf_invader.003 isnt firing properly (at least from what i can read in the text file should be there), the chain stops from progressing and the gameconsole says that no "wolf_invader.xxxx"-event/ID after it exists.

after replacing the content of the entire textfile with the "revealed" textfile content on gidhub, the game can find the event IDs, but they fire blank and close on their own in a split second.

i have also resubscribed to the mod several times, made it the only mod in the playset, verified the game files and tried it on an entire new save with the same results: the game cant find the events.

i only own:
Royal Court
Northern Lords
Fate of Iberia
Tours&Tounraments
Roads to power
All Under heaven
(and the 2 free fashion packs witch i think are unrelated)

my uneducated guess (since i only know the very basics of coding) is that there might be a hickup with the new DLC "concealing" these events from the game engine but again i dont have a clue beside that im at the end of what i think is possible to try on my end
![20251106045911_1.jpg](https://cdn.discordapp.com/attachments/1436179304764674098/1436179305813245952/20251106045911_1.jpg?ex=6a83c235&is=6a8270b5&hm=7308f274ec0c219259c5e6d71624b751800516725a44ba72d4414a8737daf6c5&)
![20251106045952_1.jpg](https://cdn.discordapp.com/attachments/1436179304764674098/1436179306538598400/20251106045952_1.jpg?ex=6a83c235&is=6a8270b5&hm=1542715dca55ea5ede6f64127f507b2a9cbdf3dcf893dbb81de1b594df02d9ae&)
---

## Discussion (2 comments)

**666gnampf** · *2025-11-08*
as addition: this is what happens if i copy the content from github into the .txt file
![20133D1.JPG](https://cdn.discordapp.com/attachments/1436179304764674098/1436550176989909172/20133D1.JPG?ex=6a83ca1c&is=6a82789c&hm=c3231df7c6996d1e6571d9b178ab7d9dd076fbd8e96888294390fd25250b7ae4&)

**666gnampf** · *2025-11-08*
so even though the checksum is the same, for some reason it leads to a different outcome (witch is still broken)
