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
![Screenshot_from_2025-11-07_00-23-45.png](https://cdn.discordapp.com/attachments/1436191742155165696/1436240091239678033/Screenshot_from_2025-11-07_00-23-45.png?ex=6ac3eb91&is=6ac29a11&hm=0a61a9c57f482daea7870d6288d5b35e9a96b94aaebe692db81e4a9ddaeeb16f&)

**xaviersc2** · *2025-11-07*
Speaking of which, <@211867000505499649> buddy, pal, old man who shakes fist at cloud, you need to update the Elven governments officially too.

**xaviersc2** · *2025-11-07*
Alternatively, I did it myself, and you can just paste them in at your leisure.
[elf_governments.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436250157040664586/elf_governments.txt?ex=6ac3f4f1&is=6ac2a371&hm=6f5eceabfc43f66b3b8ef195f2e0dc3dedda6b02d3510e6f087b6e43b1d5b0e6&)
[spark_government_types.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436250157325746236/spark_government_types.txt?ex=6ac3f4f1&is=6ac2a371&hm=b9df74004dad4e98d7fcd9fbc72fa9bea1c653805fcd38642e829a59b0100226&)

**xaviersc2** · *2025-11-07*
Oh, noticed a goof on my part. I forgot to change the color on the Aeluran government type to remove the hsv because it's using raw RBG, my bad.

**xaviersc2** · *2025-11-07*
Alright, I fixed that small goof, and I also merged them into a single file (you don't need a file for each government, that's just file bloat).
[Z_ed_government_types.txt](https://cdn.discordapp.com/attachments/1436191742155165696/1436275587374125087/Z_ed_government_types.txt?ex=6ac40ca0&is=6ac2bb20&hm=52e674c13c2e4ddc2b42b82d2cc1f504642f3c9dee1b90a3c084b81438fb5b1c&)

**soren3520** · *2025-11-07*
That worked, good lookin out

**xaviersc2** · *2025-11-07*
Yeah, it's tiny things like this that can get overlooked as you update a mod with a major release like AUH.
