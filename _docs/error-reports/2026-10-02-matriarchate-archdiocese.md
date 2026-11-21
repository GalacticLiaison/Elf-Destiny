# **Matriarchate Archdiocese**
**Tags:** CK3, Ongoing Issue
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1555640358686302259)
---
## Report
**dinastiatepes** · *2026-10-02*
As shown in the screenshots, even after meeting the requirement of having 3 counties converted to the Faith, the Matriarchate Archdioceses aren't being formed, and I don't even get the option to ask the High Matriarch to establish one.

Also, when I used the decision to establish a new Aeluran, my daughter became my vassal and remained Tribal instead of becoming part of the Aeluran Order government.
![image.png](https://cdn.discordapp.com/attachments/1555640358686302259/1555640359340605461/image.png?backend=b2&ex=6afe903c&is=6afd3ebc&hm=8526916526d46b3bb1d8c304521b752b4157c6bdc3f9abfba8dc81f5611a7c5f&)
![image.png](https://cdn.discordapp.com/attachments/1555640358686302259/1555640361047564288/image.png?backend=b2&ex=6afe903c&is=6afd3ebc&hm=5fcb511af5e5b9874ca421708e9d633c37b9cbba25c733fe7c5a5b88ccb6ca70&)
![image.png](https://cdn.discordapp.com/attachments/1555640358686302259/1555640362008318003/image.png?backend=b2&ex=6afe903c&is=6afd3ebc&hm=1e59b4b450b80afa2d30a8420dbd26fcecb2400900ed9d8c9ef391cfbfe62478&)
---

## Discussion (7 comments)

**dinastiatepes** · *2026-10-02*
![image.png](https://cdn.discordapp.com/attachments/1555640358686302259/1555642925524717568/image.png?backend=b2&ex=6afe929f&is=6afd411f&hm=84638f3be47bda923e7b94270a5900412c66a41324831555051efb2b92685f03&)

**dinastiatepes** · *2026-10-02*
The event to choose a partner for your son is also bugged. The activity gets cancelled halfway through.

**dinastiatepes** · *2026-10-02*
I found another bug. When your Rite diverges from the main Rite, going on an expedition sends you to the old Rite's Holy City instead of the new Holy City of the Rite you diverged into.

**dinastiatepes** · *2026-10-02*
Moving the portal didn't change the location I moved it to as the Holy City. The change was only applied to the main Rite, not to my current Rite.

**dinastiatepes** · *2026-10-02*
![image.png](https://cdn.discordapp.com/attachments/1555640358686302259/1555672488036401172/image.png?backend=b2&ex=6afeae28&is=6afd5ca8&hm=a420fa7c162e72489365b4fa0cd0dbaa7c79039afc6009d2c144cad8060994bb&)

**dinastiatepes** · *2026-10-02*
It appeared now, but it's showing this. It wasn't formed because it says that it doesn't use Clerical Regions. Maybe it's because my Rite diverged. I'm not sure if it's actually broken.

**eastpointed** · *2026-10-05*
Thanks for the report, took a while to figure out the main issue
**Why no Matronate:** your counties are sitting inside the Archdiocese of Mayo, which the Christian church spread over the whole of Ireland in your game. A Matronate can only be made from counties that no archdiocese covers, and that's what the red text on the petition is telling you. Your rite has nothing to do with it. The fix coming in the next patch: when an elven Aeluran ruler holds the archbishop's seat and at least half of the archdiocese's counties are Aeluran, the whole thing flips to the Order and becomes a Matronate. For Ireland that means taking Mayo itself and converting about half the island, so it's a conquest goal rather than a quick petition.

**Your daughter staying Tribal:** I couldn't make this happen on 2.0.3. A Sister who gets a county from that decision switches to the Aeluran Order government straight away. Which version were you on when she got Ossory, and was she already a Sister at that point? Either way the next patch adds a yearly check that puts every ruling Sister on the Order government, so your save will sort itself out at the next New Year.

**Expedition going to the old holy city:** the expedition site is the original Grand Portal ruins, and it stays there after you move the portal. That's intended for now.

**Portal and rites: **holy sites belong to the faith, not to a rite. The faith window just sorts them by the rite of the county they sit in, which is why it looked like a main-rite-only thing. Moving the holy site along with the portal only came in with 2.0.3, so if you moved the portal before updating, the site stayed at the old spot. Move it again and it'll follow.

**Matchmaking getting cancelled:** known, and it'll get fixed as part of the matchmaking rework rather than on its own.
