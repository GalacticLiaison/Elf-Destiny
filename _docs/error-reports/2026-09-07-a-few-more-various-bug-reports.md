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
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601156883652709/image.png?ex=6ac3f892&is=6ac2a712&hm=a87633c7e0a1cf2abc00295cc0f8a0c71b0b46c4b1bc2b40fd18a6831c95696d&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast **is also missing some localization strings
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601492096622643/image.png?ex=6ac3f8e2&is=6ac2a762&hm=47be24b49aea3717581b1855d3916e93fdbf9a89d8183e075e3231f744d7520c&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546601492495204502/image.png?ex=6ac3f8e2&is=6ac2a762&hm=aabfa5ef14597cb4cd348db19fada1cfb211458ef35c8c19fba4fa0218f1087b&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast**: and some more localization
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603130857328750/image.png?ex=6ac3fa68&is=6ac2a8e8&hm=a12e7a66d7d47b6c8ed546c0b48621cd13a254d9dadee39d5996087fca42fb25&)

**.fulululu** · *2026-09-07*
**entrance_feast_new_event_selection_tombola**: the original feast's equiv on_action has a trigger as shown.  as well, there is "murder attendee" events mixed into "entrance_feast_default_event_selection"; specifically, the events shown in red in the second picture
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603871353311303/image.png?ex=6ac3fb19&is=6ac2a999&hm=7cfa1db3da78d8213c44e64431deb15b8b1fbdbaa212e98fe638e64806b3f9f0&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546603871978393692/image.png?ex=6ac3fb19&is=6ac2a999&hm=8d88107f244fa9d8a2e676e0982066c36c9d5c2b5aa4e139fbe577acf6db6abd&)

**.fulululu** · *2026-09-07*
**activity_entrance_feast**: there's also no honorary guest scoped in this activity, but that's pretty minor
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546604380793344050/image.png?ex=6ac3fb92&is=6ac2aa12&hm=692df97bc6e8558129cb9689f874e8d61d842990a67b4763ec97a7e5d79ee9fb&)

**.fulululu** · *2026-09-07*
**activity_aeluran_matchmaking**: various missing localization
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546604603183861911/image.png?ex=6ac3fbc7&is=6ac2aa47&hm=22f3c4fac04fa8063781602ed1057c9a9ab36fd25502331aff384617a6f27dc5&)

**.fulululu** · *2026-09-07*
**activity_expedition**: and more various localization; again, minor, as most of it requires a second player to see (e.g., Ruler X sees that Ruler Y is hosting an Expedition and will see missing loc.)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546605072094593134/image.png?ex=6ac3fc37&is=6ac2aab7&hm=f9bb7eacacb56c6f7c99338b7342a8eb0229d3441d5f3a1585944141b40e424f&)

**.fulululu** · *2026-09-07*
**common\artifacts\visuals\elf_armor_visuals.txt**: artifact visuals call for scope:owner, which doesn't exist. You want to use either "scope:artifact.creator" or simply root
(the christianity_religion error is just ck3tiger being out of date, so ignore that red underline on the left!)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546606138680807424/image.png?ex=6ac3fd36&is=6ac2abb6&hm=5313fbe77630ce0a5b39120d11446bfa68556fe6edd8a5a522351a0f178ca5c2&)

**.fulululu** · *2026-09-07*
**common\artifacts\visuals\elf_weapon_visuals.txt**: these three are missing non-triggered/fallback visuals
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546606713740988486/image.png?ex=6ac3fdbf&is=6ac2ac3f&hm=32e850de8c512ed43e73a3d73d0481eee813475de6b1b9c9c13e746097e0a994&)

**.fulululu** · *2026-09-07*
**common\buildings\elf_tribal_buildings.txt**: Some duplicated lines, with the second one being the only real issue
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546607309570969610/image.png?ex=6ac3fe4d&is=6ac2accd&hm=59f4e556279cfe648d35d41ede07c4317d593bdb4238f85dccb9d72137df2b7d&)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546607309910704219/image.png?ex=6ac3fe4d&is=6ac2accd&hm=da36bd029e0abc5c99f3ec5e19ecd7ab2de07db8b90525b5a43b50a89eefff17&)

**.fulululu** · *2026-09-07*
**common\character_interactions\OVERRIDE_character_interactions.txt**: swing_scales_currency_interaction is outdated versus vanilla interaction, and is missing many parts (see red bars on right side of image; green is your additions)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546608191775969350/image.png?ex=6ac3ff1f&is=6ac2ad9f&hm=c0ebe606f775e956611bf024cd85293e2711157c29e30fb3e07781a9e65116c3&)

**.fulululu** · *2026-09-07*
**common\coat_of_arms\coat_of_arms\elf_title_coa.txt**: duplicate entry
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546608479865806919/image.png?ex=6ac3ff64&is=6ac2ade4&hm=f271f135b9a4f03fe95838dbb063823648731887fe1ca8366e9f2d19b9d9b9d3&)

**.fulululu** · *2026-09-07*
**task_aeluran_conversion**: old trigger (fp2_struggle_faith_is_mozarabic_trigger = no) no longer exists, in favor of new trigger (portrait_religious_faith_or_foundational_trigger = { FAITH = faith:mozarabic_church })
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546611068778848350/image.png?ex=6ac401cd&is=6ac2b04d&hm=351e1312df8ba418810a7a4490b0bd89dbb0fcffa91497a7df5b99aaf0284c86&)

**.fulululu** · *2026-09-07*
**common\culture\cultures\dark_elf_cultures.txt**: "category" doesn't seem to be a valid token in the base-game, and the file itself isn't in UTF-8 BOM encoding
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546611264674074624/image.png?ex=6ac401fc&is=6ac2b07c&hm=106f83705fb8a526f12b056ace04749a1e3fbaf89177b80e676dd74da1812ad9&)

**.fulululu** · *2026-09-07*
**common\customizable_localization\battle_of_wills_custom_loc.txt**: I think the line 242 should be BattleOfWillsMajorNegativeAeluranOrderModifier ?
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546612266768662548/image.png?ex=6ac402eb&is=6ac2b16b&hm=71450648c98548f4b88aa984082f4895e235f34f43dc7bf1765f261e91cbdf5b&)

**.fulululu** · *2026-09-07*
**common\customizable_localization\elf_racial_description_custom_loc.txt**: this is an overwrite (which at least ck3tiger seems to think can cause issues)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546612528057024562/image.png?ex=6ac40329&is=6ac2b1a9&hm=0ef15a502c3e660aa6b38a3a10a3f0061b9755038f6185d54b709555f2871c07&)

**.fulululu** · *2026-09-07*
**common\event_themes\bloodline_event_themes.txt**: missing an @ define
same for:
**common\event_themes\expedition_event_themes.txt**
**common\event_themes\main_story_event_themes.txt**
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546613561634201681/image.png?ex=6ac4041f&is=6ac2b29f&hm=7c230c46b133aed09afb59f1651b9fef4a69646d0cd0f35488805ef656380347&)

**.fulululu** · *2026-09-07*
**common\game_concepts\0lib_urf_race_concepts.txt**: don't use commas!
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546613938760851507/image.png?ex=6ac40479&is=6ac2b2f9&hm=0e0df38c9db9c769bdbde8f45ab5551324b28120424dc6980151b26b68dec386&)

**.fulululu** · *2026-09-07*
**common\governments\spark_government_types.txt**: court_generate_commanders should be outside the government_rules = { ... }
(base game example on right)
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546614595492388955/image.png?ex=6ac40516&is=6ac2b396&hm=3cd1f2974470b46dc601a1b93ada4a92bcb3c9851cba80a521b3834cfc1f4a65&)

**.fulululu** · *2026-09-07*
**common\laws\OVERRIDE_laws.txt**: slightly out of date with base game file
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546615239687143464/image.png?ex=6ac405af&is=6ac2b42f&hm=f527335619c582ba87ab935582a95b3a534094e616628d9366035fc30028c9a7&)

**.fulululu** · *2026-09-07*
**common\script_values\elf_dest_battle_of_wills_values.txt**: line 7 should be "add = difference_in_aeluran_order_value"
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546616127457726474/image.png?ex=6ac40683&is=6ac2b503&hm=79ccb3cbf30ddfaa90a093c4d20f82e9e7f8f55695b057f762437e6d25558655&)

**.fulululu** · *2026-09-07*
**common\scripted_character_templates\bloodline_character_templates.txt**: you can't set father like that in a scripted_character; try "set_father" in the "after_creation = {...}" block

(as well in that file, the three lormelis templates have "culture = culture:elf" that should be "culture = culture:elf_culture_lormelis")
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546617223400005722/image.png?ex=6ac40788&is=6ac2b608&hm=5280c2bc861803bf472f67ab890a0be9934636f133aa05c8b2927ccc455dc1f6&)

**.fulululu** · *2026-09-07*
**common\scripted_character_templates\story_character_templates.txt**: can't set dynasty or sexuality like that, you want the added code in the "after_creation = {...}" block
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546617757758390332/image.png?ex=6ac40808&is=6ac2b688&hm=a67b52375ef1f7c6ca4698a87c1dfae6973862de7a712cbc0fd9457e14b3343c&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\aeluran_repeating_scripted_effects.txt**: This would work better/with less errors
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546618673316364308/image.png?ex=6ac408e2&is=6ac2b762&hm=79716c9db4d4313dd2a33fe23b59fce06dd50421837492035b506aa30051596b&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\entrance_scheme_scripted_effects.txt**: you missed commenting out an end bracket
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546619155439034368/image.png?ex=6ac40955&is=6ac2b7d5&hm=01bb568b9902d6d2c4f410a15b6d902b606e72074e03d5b3ef83c58e1c70eb3a&)

**.fulululu** · *2026-09-07*
**common\scripted_effects\aeluran_matchmaking_scripted_effects.txt**: I beeeelieve that story_owner becomes an invalid scope when you switch into "any_living_character", so doing a "save_scope_as = ed_story_owner" and using "scope:story_owner" might work better!
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546620905491271800/image.png?ex=6ac40af6&is=6ac2b976&hm=2b7d324aeaecc90fa3379069d5254d25b7fb736a9355f818a49a8ff2f548a59e&)

**.fulululu** · *2026-09-07*
**common\story_cycles\elf_destiny_misc_stories.txt**: you probably want "story_owner = { NOT = { has_character_modifier = ... } }" for the trigger
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546621448238407830/image.png?ex=6ac40b78&is=6ac2b9f8&hm=d06be4aa10789b0a2132df9e7d2ad0480246db2a1db13303efa345091129677c&)

**.fulululu** · *2026-09-07*
**common\traits\elf_lifestyle_traits.txt**: @ values need to be defined in the file and are not here
Also in **common\traits\elf_personality.txt & common\traits\evolved_standard_traits.txt**
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546621768905793627/image.png?ex=6ac40bc4&is=6ac2ba44&hm=5a685b16cf7c3be7bfddcaa5746befcd5ace1f5ce8edca2307922bcb3066fd21&)

**.fulululu** · *2026-09-07*
**events\birth_events.txt**: could do with a resync, but it looks to be mostly minor stuff tbh
![image.png](https://cdn.discordapp.com/attachments/1546601033529036830/1546622668566954114/image.png?ex=6ac40c9b&is=6ac2bb1b&hm=ea426f7c2862512c432471b1fd5bad3b56ad136921edb290558f96409d0e96a8&)
