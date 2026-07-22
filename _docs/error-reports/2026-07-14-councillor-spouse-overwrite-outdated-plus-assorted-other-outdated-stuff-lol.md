# councillor_spouse overwrite outdated; plus assorted other outdated stuff lol
**Tags:** CK3, Ongoing Issue, Sev 3  - Minor Bug
**Source:** [View on Discord](https://discord.com/channels/1179053540161880074/1526386397148090528)
---
## Report
**.fulululu** · *2026-07-14*
Basically the title!

More Detail:
As far as I can tell, it seems `councillor_spouse` is overwritten (in the file: `3114064450\common\council_positions\spark_council_positions.txt`) for one reason: 
- so that the trigger for `valid_character = { ... }` can contain a check related to `aeluran_regency`. 
However, due to seemingly being outdated, some items cause lots of error spam (namely, `name = { ... }`, where `scope:councillor_liege` is no longer a scope; I think they swapped the scopes, making the liege `root` and making the old `root`-scope councilor the new `scope:councillor`).

Solution:
The vanilla `councillor_spouse`'s `valid_character = { ... }` already contains a scripted trigger (`can_be_spouse_councillor_trigger = yes`), which probably could be overwritten as needed for the `aeluran_regency` check (see third attached screenshot), rather than overwriting the `councillor_spouse` def itself.

Bonus Issue:
The overwrite to `councillor_court_chaplain` is also minorly outdated (compared to the base-game file: missing a `is_clergy_position = yes` line and with `fired_minister_position_effect = yes` moved to  `on_lose_position = {...}`; both shown in fourth attached screenshot); 
EDIT: there also might be a logic issue with `remove_variable = religious_advisor` in `on_lose_position = {...}` and `on_fired_from_position = {...}`, see followup comment

Notes:
- ~~Marked as Sev 2~~ (Re'marked as Sev 3, but the error log still grows super large) because, while writing this post with CK3+only this mod loaded (and on the council screen), my error log grew large enough to crash my file explorer (at least I think; my file explorer crashed and my computer started freezing up, and deleting error.log fixed that lmao)
- Checked with only this mod loaded, after ensuring I have the latest version from the Steam Workshop (and doing the unsub/resub dance to ensure I have no local edits)
- I'm going to impliment my proposed changes & report back if any issues!
![councillor_spouse_diff_1.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386397316124872/councillor_spouse_diff_1.png?ex=6a620a5c&is=6a60b8dc&hm=3032b2f3a4a414333b3957606b65e313a31662880889471ab2fbceb7b17e2656&)
![proposed_solution_-_overwritten_can_be_spouse_councillor_trigger.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386397722841098/proposed_solution_-_overwritten_can_be_spouse_councillor_trigger.png?ex=6a620a5c&is=6a60b8dc&hm=e2bb7b9cdf2f4356e222ed48a342ad0f30c742cd2f9587dcdaa2f2c510d63d0e&)
![councillor_spouse_diff_2.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386398045667359/councillor_spouse_diff_2.png?ex=6a620a5c&is=6a60b8dc&hm=a3114576a8823e3f33480dcc97bce89d466882daf666ff996891b0ca45bda11b&)
![councillor_court_chaplain_diff.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386398351982732/councillor_court_chaplain_diff.png?ex=6a620a5c&is=6a60b8dc&hm=732eea3b3dc5aea2a09088c336e5638e926aeb701cc4197cf269c6111eb9a9f0&)
---

## Discussion (15 comments)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite is causing error spam

**.fulululu** · *2026-07-14*
councillor_spouse overwrite is outdated and is causing error spam

**.fulululu** · *2026-07-14*
Oop, just noticed that your overwrite to ~~`councillor_spouse`~~ `councillor_court_chaplain` contains `remove_variable = religious_advisor` in `on_lose_position = {...}` and `on_fired_from_position = {...}`, but it seems you have a scope issue, as the `religious_advisor` variable is added to the `root.liege` but removed from `root` (i.e. the `councillor_court_chaplain`, not the employing `root.liege`; see attached screenshot if needed)

(Disclaimer: I'm a dumb, so maybe I'm just wrong! ... but I think variables are attached to specific characters unless they're global vars, so I'm, like, pretty sure I'm right lol)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526398295872770098/image.png?ex=6a621570&is=6a60c3f0&hm=57aba2e4de254efbbc8862dfe4e2da63662ffc80886404b49d7cf7fe59e0e046&)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite outdated; maybe replace with scripted trigger overwrite?

**.fulululu** · *2026-07-14*
Also, since I wrote this up already anyway:
You could reduce the 'upkeep-overhead' on your `councillor_court_chaplain` overwrite, by moving that `remove_variable = religious_advisor` portion from the overwritten `councillor_court_chaplain` instead into an `on_action` overload, as shown in the attached image

EDIT: I cannot edit the image without making a new comment with a new image; I put `councillor_spouse`, but it should say `councillor_court_chaplain`, if I'm understanding the intent of that variable correctly (it's late and I got them confused earlier lol)

EDIT 2: you'd also want the same type of effect for two additional overloaded `on_action`s: `on_leave_council` and `on_fired_from_council`, both from the base-game files
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526401832170029106/image.png?ex=6a6218bb&is=6a60c73b&hm=19582edb5e512fd23fc2d7d3061ca30ff5f21e1d662a706f59f59f35246e2f90&)

**.fulululu** · *2026-07-14*
(So as to not make more report threads, I'll update some more here: 
`game_rule_create_spouse_and_children = {...}` in `3114064450\common\scripted_effects\0lib_urf_game_rule_override_effects.txt` is also outdated from the base-game effect, throwing errors due to not handling the $LOCATION$ arg; also, it's missing some nomad logic; I just pasted in the new code, then readded the `template = urf_default_template` everywhere there was a `location = $LOCATION$.location`)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526426327052193922/image.png?ex=6a622f8b&is=6a60de0b&hm=4dee8ce659e0b6b16e19fe19c70d8b0c75adb1e489df632ae780496fd10911a4&)

**.fulululu** · *2026-07-14*
This effect doesn't exist; cannot find what it might supposed to be anywhere in base-game, so I dunno lol
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430159266381864/image.png?ex=6a62331d&is=6a60e19d&hm=45a75dc2c100628f6b2298e93d5cd2466dc9b36c31eecbdc3d59351298758c5f&)

**.fulululu** · *2026-07-14*
the top highlight should probably end in `_value`
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430278200066159/image.png?ex=6a62333a&is=6a60e1ba&hm=6940d96665f33ef606a9634c1cc2358daec5e6964df402f077c6facbca3fb05e&)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite outdated; plus assorted other outdated stuff lol

**.fulululu** · *2026-07-14*
this should probably be that
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430884713074688/image.png?ex=6a6233ca&is=6a60e24a&hm=5de2b556f3cf60a04e4f0dd69b895359b954d7cd5926615956e14b7839bf1588&)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430885086236722/image.png?ex=6a6233ca&is=6a60e24a&hm=685938399f4982f3ea6a290abe630b1342405f99f1479c7de2cc121c9a34528b&)

**.fulululu** · *2026-07-14*
highlighted is repeated, should only be one block
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432443895119933/image.png?ex=6a62353e&is=6a60e3be&hm=ce802c7426cb105928e3cd3df5b0bd929033e86ecf168168b500535a42fa4aac&)

**.fulululu** · *2026-07-14*
a should be b
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432714939568289/image.png?ex=6a62357e&is=6a60e3fe&hm=1041d24a32d8da73eed68ca0020c6de6e359b2775540b2e9b504938cdf562c34&)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432715224907877/image.png?ex=6a62357f&is=6a60e3ff&hm=b2ba9160fa57c1cbfec3a55bbb2891626bc5cef1c4780ca0c37081d3cb830e61&)

**.fulululu** · *2026-07-14*
`@value` values need to be defined in the file using it (they're not 'global')
same with `3114064450\common\landed_titles\aeluran_weavers_titles.txt` for `@always_primary_score = 1000`
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526440434950209678/image.png?ex=6a623caf&is=6a60eb2f&hm=9a894f192484dc2847487de046ba571fe019dbcc9dc45e5ab2571c185aa54672&)

**generalissimo_aar** · *2026-07-14*
Bro went crazy

**generalissimo_aar** · *2026-07-14*
thank you so much!
