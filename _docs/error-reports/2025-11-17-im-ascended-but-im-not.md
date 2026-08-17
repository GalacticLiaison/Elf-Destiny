# im ascended but im not
**Tags:** CK3, Ongoing Issue, Sev 2 - Severe Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1440027359825756190)
---
## Report
**cosmic_waffles** · *2025-11-17*
![elv.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027360828199153/elv.png?ex=6a83ea3d&is=6a8298bd&hm=7f34c072d8356568547958a6095e0f9a94c8777a26a6226a3f5a918a30493188&)
![elv1.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361318928455/elv1.png?ex=6a83ea3d&is=6a8298bd&hm=779c6113c370842d7f9e5271003a0aa12738d10753619d5155f742bed07e3378&)
![elv2.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361637826600/elv2.png?ex=6a83ea3d&is=6a8298bd&hm=1b707a1562563a5e6ef01e2ce25591f557019a079ec2c419a62885eafd1bdc4a&)
![elv3.png](https://cdn.discordapp.com/attachments/1440027359825756190/1440027361969049620/elv3.png?ex=6a83ea3d&is=6a8298bd&hm=ff3c9f673d6406c35defcc1e061e1229d73998440f44eef253ea4283877efe89&)
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
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441919978524774440/image.png?ex=6a843560&is=6a82e3e0&hm=6054db21f462e580e65b52f62f35a1d48b7bfc479d597ba1ac97350432181f69&)

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
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924524529549476/image.png?ex=6a84399c&is=6a82e81c&hm=8069cb96c604c0b56cee2447d219a618232058c79f0da201cfceb1b38a57296e&)

**edgor12** · *2025-11-22*
YOU PUT ALL THE FLAGS TOGETHER LIKE THIS

**edgor12** · *2025-11-22*
ITS WORKING NOW
![image.png](https://cdn.discordapp.com/attachments/1440027359825756190/1441924745020051596/image.png?ex=6a8439d0&is=6a82e850&hm=6b7bbc959d279b2e44f7c13b204b7795921b924c443ebc628f8f64ea810a2f2a&)

**edgor12** · *2025-11-22*
LETS GOOO

**edgor12** · *2025-11-22*
i'd post the file but i feel like its not a good idea
