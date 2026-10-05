# im ascended but im not
**Tags:** CK3, Ongoing Issue, Sev 2 - Severe Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1440027359825756190)
---
## Report
**cosmic_waffles** · *2025-11-17*
![elv.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027360828199153/elv.png?ex=6ac3dafd&is=6ac2897d&hm=1a6d2412680785d66ae985f432f27abeacd3bcfac12d8e1074278f2f18fd5bce&)
![elv1.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361318928455/elv1.png?ex=6ac3dafd&is=6ac2897d&hm=ab7589848cac73e9c467250bf253fea8594c4dd7099863ae99e85e0e8f9b7d14&)
![elv2.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361637826600/elv2.png?ex=6ac3dafd&is=6ac2897d&hm=747ff0b2d9838f2bae141ab9caa66f651b7d5438f72f474dcc251254f63fe381&)
![elv3.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361969049620/elv3.png?ex=6ac3dafd&is=6ac2897d&hm=74a10643aa1eb36a9c44fc435f6fc661da976a53991155e2a1ad2b4f6fe4d876&)
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
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441919978524774440/image.png?ex=6ac42620&is=6ac2d4a0&hm=4a72e3bace56b1f543be13629ba8d1ad474523b567d59b70ddbe37dcda7ebca3&)

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
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924524529549476/image.png?ex=6ac42a5c&is=6ac2d8dc&hm=99b00263963f1112201e4f452bd8ad45c4ef0abf1e22ee88f5d3ce8a00ec9601&)

**edgor12** · *2025-11-22*
YOU PUT ALL THE FLAGS TOGETHER LIKE THIS

**edgor12** · *2025-11-22*
ITS WORKING NOW
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924745020051596/image.png?ex=6ac42a90&is=6ac2d910&hm=fafcb421026c26f341279c276ddf44104b0dc52086df541dc62e08affadc4d44&)

**edgor12** · *2025-11-22*
LETS GOOO

**edgor12** · *2025-11-22*
i'd post the file but i feel like its not a good idea
