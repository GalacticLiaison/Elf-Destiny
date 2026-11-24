# im ascended but im not
**Tags:** CK3, Ongoing Issue, Sev 2 - Severe Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1440027359825756190)
---
## Report
**cosmic_waffles** · *2025-11-17*
![elv.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027360828199153/elv.png?ex=6aff2e7d&is=6afddcfd&hm=6f765daebae46e36f1f505988a8aa1e3440aa9beb681e143f6c878a5dade13f1&)
![elv1.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361318928455/elv1.png?ex=6aff2e7d&is=6afddcfd&hm=2598e1d1c14b0d79667549e63fc4baf1293cf902c890508a7e1823f681686494&)
![elv2.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361637826600/elv2.png?ex=6aff2e7d&is=6afddcfd&hm=903a637f136015066bfd3a8e8028bd4afe1a2b62f70ef2977f461572acaab3df&)
![elv3.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361969049620/elv3.png?ex=6aff2e7d&is=6afddcfd&hm=d1ff2387f2c9af02eaf5a9537b9520e7fdc1aef79045212b327c9b702db611f8&)
---

## Discussion (23 comments)

**generalissimo_aar** · *2025-11-17*
Oof

**xaviersc2** · *2025-11-17*
So for this, I think we take a page out of PDX's book here.

**xaviersc2** · *2025-11-17*
Instead of this: (I'm using War Camps level 3 as my example)
```    can_construct_potential = {
        has_building_or_higher = tribe_01
        building_requirement_advanced_tribal = yes
        scope:holder = { NOT = { government_has_flag = government_is_wanua } }
    }```
We instead change it to this:
```    can_construct_potential = {
        has_building_or_higher = tribe_01
        scope:holder = { government_has_flag = government_is_advanced_tribal }
        scope:holder = { NOT = { government_has_flag = government_is_wanua } }
    }```
It should work just as well as the old check, I think.

**xaviersc2** · *2025-11-17*
Theoretically, more robust.

**xaviersc2** · *2025-11-17*
Because it calls/checks for the flag itself within the government, instead of checking for a requirement. (Which, to be honest, I think they changed how that system works.)

**xaviersc2** · *2025-11-17*
Of course, we'd also want to alter the `is_enabled` parameter, so instead of this:
```    is_enabled = {
        # building_requirement_tribal = yes
        building_requirement_tribal_or_advanced_tribal = yes
    }```
We go for something more like this:
```    is_enabled = {
        OR = {
            scope:holder = { government_has_flag = government_is_tribal_excluding_wanua }
            scope:holder = { government_has_flag = government_is_advanced_tribal }
        }
    }```
By checking for the flags here too, we also avoid any base-game shenanigans by insulating ourselves from any back-end changes PDX may make again down the line.

**xaviersc2** · *2025-11-17*
After all, those flags *are there* to make modding easier. We should take advantage.

**xaviersc2** · *2025-11-17*
<@211867000505499649> Thoughts on the matter?

**edgor12** · *2025-11-22*
idk what i'm doing wrong, it doesnt seem to be working

**generalissimo_aar** · *2025-11-22*
It is bugged right now

**edgor12** · *2025-11-22*
the solution?

**edgor12** · *2025-11-22*
vanilla ck3 uses this for tribal holdings
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441919978524774440/image.png?ex=6afed0e0&is=6afd7f60&hm=3e0ef53593dd5a08ea0d4fdeb316a0dc7947cbb3299993d6013ff6c60f757bac&)

**edgor12** · *2025-11-22*
scope:holder ?= { }

**generalissimo_aar** · *2025-11-22*
Probably. We already have one we just need to implement it

**edgor12** · *2025-11-22*
instead of scope:holder = {}

**generalissimo_aar** · *2025-11-22*
Thing is main modder is busy. So I would say use a cheat mod to switch government out of it for now

**edgor12** · *2025-11-22*
but i wanna play with it soo baaad 😭

**edgor12** · *2025-11-22*
OMG I FIXED IT

**edgor12** · *2025-11-22*
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924524529549476/image.png?ex=6afed51c&is=6afd839c&hm=47a8b57012a515b31ff425a32cffe2b9983e50ece8bfdf1ef62faf8114263f44&)

**edgor12** · *2025-11-22*
YOU PUT ALL THE FLAGS TOGETHER LIKE THIS

**edgor12** · *2025-11-22*
ITS WORKING NOW
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924745020051596/image.png?ex=6afed550&is=6afd83d0&hm=0b65ba8333a2422f4729bbd1883133db66c6ca509c1c6471b2317c89d2fe71e9&)

**edgor12** · *2025-11-22*
LETS GOOO

**edgor12** · *2025-11-22*
i'd post the file but i feel like its not a good idea
