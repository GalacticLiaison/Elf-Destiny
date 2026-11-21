# A few more various bug reports
**Tags:** CK3, Sev 3  - Minor Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1546601033529036830)
---
## Report
**.fulululu** · *2026-09-07*
Since the new 2.0 beta dropped, I wanted to go through and update my local edits and such, and I found the following bugs along the way:
(I'll go back and update this opening post when I finish making comment replies to this thread!)
---

## Discussion (29 comments)

**.fulululu** · *2026-09-07*
In **activity_entrance_feast**, there is an empty if block
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601156883652709/image.png?ex=6afea352&is=6afd51d2&hm=e1270600d80748d48a511d2c4c5d83a98c1fb4dafabe4b5cc5cf88846939f45d&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast **is also missing some localization strings
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601492096622643/image.png?ex=6afea3a2&is=6afd5222&hm=2b4f40283312a2bf2b89df504726ec2e5b3cded920ed0823f32f9945b4821c64&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601492495204502/image.png?ex=6afea3a2&is=6afd5222&hm=9f35ac121524734b2e78be737ea881b4ab5cf67588ad71a97754671079ba1889&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast**: and some more localization
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603130857328750/image.png?ex=6afea528&is=6afd53a8&hm=898763ffb7f2395823844ea46570b7cffd6123067a10d85663e870fed6b29084&)

**.fulululu** · *2026-09-07*
**entrance_feast_new_event_selection_tombola**: the original feast's equiv on_action has a trigger as shown.  as well, there is "murder attendee" events mixed into "entrance_feast_default_event_selection"; specifically, the events shown in red in the second picture
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603871353311303/image.png?ex=6afea5d9&is=6afd5459&hm=ea1645e1b16b59bf9d8ad3d5eec0cb07fd4a509e26c0b400416a95382dc3fc0e&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603871978393692/image.png?ex=6afea5d9&is=6afd5459&hm=d167f5848821b2bd7710ce352e6a8edc9cb8c9079a47bcf7f02fc6848c85a432&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast**: there's also no honorary guest scoped in this activity, but that's pretty minor
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546604380793344050/image.png?ex=6afea652&is=6afd54d2&hm=1ba7998631fb99afb3b0e3b4e697293ab4ee6f248514e1d516c1ae6d9f8622cc&)

**.fulululu** · *2026-09-07*
**activity_aeluran_matchmaking**: various missing localization
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546604603183861911/image.png?ex=6afea687&is=6afd5507&hm=498796ad1ef60746889dc1b2ef459498b59a6a52f55175a9206276e219358508&)

**.fulululu** · *2026-09-07*
**activity_expedition**: and more various localization; again, minor, as most of it requires a second player to see (e.g., Ruler X sees that Ruler Y is hosting an Expedition and will see missing loc.)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546605072094593134/image.png?ex=6afea6f7&is=6afd5577&hm=a0cfddee395e52f68240c1a286bfc413e31f714bbf06ae5e92257d90b21ef146&)

**.fulululu** · *2026-09-07*
**common\artifacts\visuals\elf_armor_visuals.txt**: artifact visuals call for scope:owner, which doesn't exist. You want to use either "scope:artifact.creator" or simply root
(the christianity_religion error is just ck3tiger being out of date, so ignore that red underline on the left!)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546606138680807424/image.png?ex=6afea7f6&is=6afd5676&hm=2cfd1ee59f4a20ae4fbe8a0954faa9cc6da59167250b6a60020a12627501e433&)

**.fulululu** · *2026-09-07*
**common\artifacts\visuals\elf_weapon_visuals.txt**: these three are missing non-triggered/fallback visuals
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546606713740988486/image.png?ex=6afea87f&is=6afd56ff&hm=d6fa62ff59cc8e0debf7e5ca8207bfadfa0e5161eba27d3ec33b415559e62331&)

**.fulululu** · *2026-09-07*
**common\buildings\elf_tribal_buildings.txt**: Some duplicated lines, with the second one being the only real issue
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546607309570969610/image.png?ex=6afea90d&is=6afd578d&hm=be4a942824f69ef0e4dc7b64afa57f582a07aba020c6ed55f6f9d9200ca60506&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546607309910704219/image.png?ex=6afea90d&is=6afd578d&hm=0a4083ee2be52851d9097ef738bed4389395e85cee462a0711b351dce6fe6834&)

**.fulululu** · *2026-09-07*
**common\character_interactions\OVERRIDE_character_interactions.txt**: swing_scales_currency_interaction is outdated versus vanilla interaction, and is missing many parts (see red bars on right side of image; green is your additions)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546608191775969350/image.png?ex=6afea9df&is=6afd585f&hm=fcb57e571602d33b2510a199afba232e88017842b3746a610e8fe9dd0ab36d52&)

**.fulululu** · *2026-09-07*
**common\coat_of_arms\coat_of_arms\elf_title_coa.txt**: duplicate entry
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546608479865806919/image.png?ex=6afeaa24&is=6afd58a4&hm=9fbaa522a87be1344dfaea23880bb0f18cabc3e2e4f32ac4dda47d16870efa7e&)

**.fulululu** · *2026-09-07*
**task_aeluran_conversion**: old trigger (fp2_struggle_faith_is_mozarabic_trigger = no) no longer exists, in favor of new trigger (portrait_religious_faith_or_foundational_trigger = { FAITH = faith:mozarabic_church })
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546611068778848350/image.png?ex=6afeac8d&is=6afd5b0d&hm=95203b81912b8591a67fe329b5f52464b83e08aa2ceeef04cfdacb74d2bd8ac7&)

**.fulululu** · *2026-09-07*
**common\culture\cultures\dark_elf_cultures.txt**: "category" doesn't seem to be a valid token in the base-game, and the file itself isn't in UTF-8 BOM encoding
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546611264674074624/image.png?ex=6afeacbc&is=6afd5b3c&hm=d7324256de59605fd1e1b6b21b01de56b445ef5bd1f1801a6d7a0568fecd9972&)

**.fulululu** · *2026-09-07*
**common\customizable_localization\battle_of_wills_custom_loc.txt**: I think the line 242 should be BattleOfWillsMajorNegativeAeluranOrderModifier ?
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546612266768662548/image.png?ex=6afeadab&is=6afd5c2b&hm=eaad9ef7c83b21e88908c8f4abb71d200edd475e0675006eff2d6e493079d191&)

**.fulululu** · *2026-09-07*
**common\customizable_localization\elf_racial_description_custom_loc.txt**: this is an overwrite (which at least ck3tiger seems to think can cause issues)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546612528057024562/image.png?ex=6afeade9&is=6afd5c69&hm=37a2a6ddfd4e489c5efdd51776811e02fa584f17cd0e4a35d37c730b5bfc4ee7&)

**.fulululu** · *2026-09-07*
**common\event_themes\bloodline_event_themes.txt**: missing an @ define
same for:
**common\event_themes\expedition_event_themes.txt**
**common\event_themes\main_story_event_themes.txt**
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546613561634201681/image.png?ex=6afeaedf&is=6afd5d5f&hm=5bdb801632b2b36db01b8b42da70e05fe7c0ebb4775e61bce09baea3dbe09978&)

**.fulululu** · *2026-09-07*
**common\game_concepts\0lib_urf_race_concepts.txt**: don't use commas!
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546613938760851507/image.png?ex=6afeaf39&is=6afd5db9&hm=4364681f3f7852c64d139c0aeba7962544578e485cf87055662829fe397e2aae&)

**.fulululu** · *2026-09-07*
**common\governments\spark_government_types.txt**: court_generate_commanders should be outside the government_rules = { ... }
(base game example on right)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546614595492388955/image.png?ex=6afeafd6&is=6afd5e56&hm=68b662959d827ed68908da82333a818b2bfa8df6e60c880915205ec0e62dfa94&)

**.fulululu** · *2026-09-07*
**common\laws\OVERRIDE_laws.txt**: slightly out of date with base game file
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546615239687143464/image.png?ex=6afeb06f&is=6afd5eef&hm=8bb9901ffdc70d9c7b6f06db3f1a5135968344dba822511eb2c267db370aac0a&)

**.fulululu** · *2026-09-07*
**common\script_values\elf_dest_battle_of_wills_values.txt**: line 7 should be "add = difference_in_aeluran_order_value"
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546616127457726474/image.png?ex=6afeb143&is=6afd5fc3&hm=e8427d257d9b9f27a35df8ebf304e275c7150543ffd6dc871ac8a2e80cf226bf&)

**.fulululu** · *2026-09-07*
**common\scripted_character_templates\bloodline_character_templates.txt**: you can't set father like that in a scripted_character; try "set_father" in the "after_creation = {...}" block

(as well in that file, the three lormelis templates have "culture = culture:elf" that should be "culture = culture:elf_culture_lormelis")
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546617223400005722/image.png?ex=6afeb248&is=6afd60c8&hm=1aa2e32aa1438f9ecd592dc2191596ad6bcded9a9bf2b58dcea879c34cf536c2&)

**.fulululu** · *2026-09-07*
**common\scripted_character_templates\story_character_templates.txt**: can't set dynasty or sexuality like that, you want the added code in the "after_creation = {...}" block
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546617757758390332/image.png?ex=6afeb2c8&is=6afd6148&hm=c4ebb8efd1181778a16e4f136214b141a7d26df3d933ea7642e77f16069f6d91&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\aeluran_repeating_scripted_effects.txt**: This would work better/with less errors
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546618673316364308/image.png?ex=6afeb3a2&is=6afd6222&hm=27a1f76232fa8feea3fd6b53c84a84adfeeffa2a637dcef0d88102fdc8723e95&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\entrance_scheme_scripted_effects.txt**: you missed commenting out an end bracket
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546619155439034368/image.png?ex=6afeb415&is=6afd6295&hm=a3e7de597c83497bdf954a726ba1bb7912e9325ad5153a990acebbde2b538bba&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\aeluran_matchmaking_scripted_effects.txt**: I beeeelieve that story_owner becomes an invalid scope when you switch into "any_living_character", so doing a "save_scope_as = ed_story_owner" and using "scope:story_owner" might work better!
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546620905491271800/image.png?ex=6afeb5b6&is=6afd6436&hm=e6e81dcf3b50fd67ff8b9807c1610892b7d3fd9e5a3a3d8cacf9ac8f767d03b6&)

**.fulululu** · *2026-09-07*
**common\story_cycles\elf_destiny_misc_stories.txt**: you probably want "story_owner = { NOT = { has_character_modifier = ... } }" for the trigger
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546621448238407830/image.png?ex=6afeb638&is=6afd64b8&hm=616f0377a63afd21a1aa97c05a29d91d12fcc06b10be76ffd71cc618b624cf1b&)

**.fulululu** · *2026-09-07*
**common\traits\elf_lifestyle_traits.txt**: @ values need to be defined in the file and are not here
Also in **common\traits\elf_personality.txt & common\traits\evolved_standard_traits.txt**
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546621768905793627/image.png?ex=6afeb684&is=6afd6504&hm=bb8c076a753427a8a7438c4a8cc1651f83923d990c7c630dcc5fe3af7a9ca6c5&)

**.fulululu** · *2026-09-07*
**events\birth_events.txt**: could do with a resync, but it looks to be mostly minor stuff tbh
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546622668566954114/image.png?ex=6afeb75b&is=6afd65db&hm=da36a55a07a059bda0aaa033c420622028a7340f9e0ca6c8c1a6006822816f9c&)
