# Royal Court/Throne room missing from Ascended Tribal Gov.
**Tags:** CK3, Ongoing Issue
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1436191742155165696)
---
## Report
**soren3520** · *2025-11-07*
So I've tried several load orders and sever different games, and every time that you choose to change to the Ascended Tribal government, your royal court and throne room disappear. I've tried ascending then becoming a king, and the royal court isn't created, nor a throne room. If I become a king and then go ascended tribal, my throne room tab immediately disappears.
---

## Discussion (9 comments)

**akitoscorpio** · *2025-11-07*
I can back this up as well, but vanished on me when my Kingdom upgraded to an empire.

**xaviersc2** · *2025-11-07*
So the government types changed how courts are handled from a rule to it's own status, and East hasn't fixed it yet.

**xaviersc2** · *2025-11-07*
If you go to `common/governments/elf_governments.txt`, remove `royal_court = yes` from the `government_rules`, and between that and `ai`, add in `royal_court = any`. Like this as shown with Feudal governments in my mod:
![Screenshot_from_2025-11-07_00-23-45.png](https://cdn.discordapp.com/attachments/1436191742155165696/1436240091239678033/Screenshot_from_2025-11-07_00-23-45.png?ex=6a83fad1&is=6a82a951&hm=720e163829856c10b100da042ad16f0424c7ed653781299234f2fa669a43bfbd&)

**xaviersc2** · *2025-11-07*
Speaking of which, <@211867000505499649> buddy, pal, old man who shakes fist at cloud, you need to update the Elven governments officially too.

**xaviersc2** · *2025-11-07*
Alternatively, I did it myself, and you can just paste them in at your leisure.
[elf_governments.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436250157040664586/elf_governments.txt?ex=6a840431&is=6a82b2b1&hm=b270555b5498d0a211e347dc6b722dd1fb083f279e4990484e9d3eef43a57263&)
[spark_government_types.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436250157325746236/spark_government_types.txt?ex=6a840431&is=6a82b2b1&hm=a558ab6855b9f8431bc66ff66a004f562dbe196b1e9975f3e7fb7e8b41cdf4f7&)

**xaviersc2** · *2025-11-07*
Oh, noticed a goof on my part. I forgot to change the color on the Aeluran government type to remove the hsv because it's using raw RBG, my bad.

**xaviersc2** · *2025-11-07*
Alright, I fixed that small goof, and I also merged them into a single file (you don't need a file for each government, that's just file bloat).
[Z_ed_government_types.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436275587374125087/Z_ed_government_types.txt?ex=6a841be0&is=6a82ca60&hm=27f441756d75feb5c47d727703616454d2478c06250091d92781913bd56354ad&)

**soren3520** · *2025-11-07*
That worked, good lookin out

**xaviersc2** · *2025-11-07*
Yeah, it's tiny things like this that can get overlooked as you update a mod with a major release like AUH.
