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
![councillor_spouse_diff_1.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386397316124872/councillor_spouse_diff_1.png?ex=6a84515c&is=6a82ffdc&hm=bf1a2670a372c03cf5b4aeaececb81985c18a1ede961fac0098fc191b52fa242&)
![proposed_solution_-_overwritten_can_be_spouse_councillor_trigger.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386397722841098/proposed_solution_-_overwritten_can_be_spouse_councillor_trigger.png?ex=6a84515c&is=6a82ffdc&hm=9aa837197d972836e726485b96462935f5984579e11150d1fc1cb3e8e713395e&)
![councillor_spouse_diff_2.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386398045667359/councillor_spouse_diff_2.png?ex=6a84515c&is=6a82ffdc&hm=d3e9187037ac888149e56da6279d02aee27ead152a779d11ad0670f0b5f67179&)
![councillor_court_chaplain_diff.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526386398351982732/councillor_court_chaplain_diff.png?ex=6a84515c&is=6a82ffdc&hm=cc08ac66e79ace33769c453f996f96168634a84bb62a964eda6390287a2f6c8b&)
---

## Discussion (15 comments)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite is causing error spam

**.fulululu** · *2026-07-14*
councillor_spouse overwrite is outdated and is causing error spam

**.fulululu** · *2026-07-14*
Oop, just noticed that your overwrite to ~~`councillor_spouse`~~ `councillor_court_chaplain` contains `remove_variable = religious_advisor` in `on_lose_position = {...}` and `on_fired_from_position = {...}`, but it seems you have a scope issue, as the `religious_advisor` variable is added to the `root.liege` but removed from `root` (i.e. the `councillor_court_chaplain`, not the employing `root.liege`; see attached screenshot if needed)

(Disclaimer: I'm a dumb, so maybe I'm just wrong! ... but I think variables are attached to specific characters unless they're global vars, so I'm, like, pretty sure I'm right lol)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526398295872770098/image.png?ex=6a845c70&is=6a830af0&hm=9baaef87d78a7e9541eb7c6f0e4fb5697f0988438494b56b7cc35c3f7a37d567&)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite outdated; maybe replace with scripted trigger overwrite?

**.fulululu** · *2026-07-14*
Also, since I wrote this up already anyway:
You could reduce the 'upkeep-overhead' on your `councillor_court_chaplain` overwrite, by moving that `remove_variable = religious_advisor` portion from the overwritten `councillor_court_chaplain` instead into an `on_action` overload, as shown in the attached image

EDIT: I cannot edit the image without making a new comment with a new image; I put `councillor_spouse`, but it should say `councillor_court_chaplain`, if I'm understanding the intent of that variable correctly (it's late and I got them confused earlier lol)

EDIT 2: you'd also want the same type of effect for two additional overloaded `on_action`s: `on_leave_council` and `on_fired_from_council`, both from the base-game files
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526401832170029106/image.png?ex=6a83b6fb&is=6a82657b&hm=225adbf67aac21286074a5451acbca7c65c5e98557c5677ae9e1daa1dc2fe96c&)

**.fulululu** · *2026-07-14*
(So as to not make more report threads, I'll update some more here: 
`game_rule_create_spouse_and_children = {...}` in `3114064450\common\scripted_effects\0lib_urf_game_rule_override_effects.txt` is also outdated from the base-game effect, throwing errors due to not handling the $LOCATION$ arg; also, it's missing some nomad logic; I just pasted in the new code, then readded the `template = urf_default_template` everywhere there was a `location = $LOCATION$.location`)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526426327052193922/image.png?ex=6a83cdcb&is=6a827c4b&hm=7af657b4b1784ef70582bec0a3fc1013bfbc987e6ed22469aea51381dc97453c&)

**.fulululu** · *2026-07-14*
This effect doesn't exist; cannot find what it might supposed to be anywhere in base-game, so I dunno lol
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430159266381864/image.png?ex=6a83d15d&is=6a827fdd&hm=c2855959ae9175da8f4115e475140272983de9697a7f108ebacc1e9350bd4827&)

**.fulululu** · *2026-07-14*
the top highlight should probably end in `_value`
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430278200066159/image.png?ex=6a83d17a&is=6a827ffa&hm=545ba9cb1c5ad42ca6f05970a3c4b2c0b8383dc3caed4fcfe91c96bea3b27afb&)

**.fulululu** · *2026-07-14*
councillor_spouse overwrite outdated; plus assorted other outdated stuff lol

**.fulululu** · *2026-07-14*
this should probably be that
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430884713074688/image.png?ex=6a83d20a&is=6a82808a&hm=44a52df00ae0c3f30334bcbe494825c973d24985457defa74bc70df1a2dfb236&)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526430885086236722/image.png?ex=6a83d20a&is=6a82808a&hm=b8551f6ab1867357084a089b218bb81236c223fa8bf9b0b44dcf45f786b83c0f&)

**.fulululu** · *2026-07-14*
highlighted is repeated, should only be one block
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432443895119933/image.png?ex=6a83d37e&is=6a8281fe&hm=e854084db2a2cf3f6e909f74a2f37e0a0409f6d7412ef7b0039fc22f13d27eb1&)

**.fulululu** · *2026-07-14*
a should be b
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432714939568289/image.png?ex=6a83d3be&is=6a82823e&hm=26493b5c55a84f4e7f87ee33528ba26a5a4915067e0e2ad2485545a07da20728&)
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526432715224907877/image.png?ex=6a83d3bf&is=6a82823f&hm=5fd3a47b26a4633e58adc375f790e0e1da9c8573076db5a222ffd303c1938e4d&)

**.fulululu** · *2026-07-14*
`@value` values need to be defined in the file using it (they're not 'global')
same with `3114064450\common\landed_titles\aeluran_weavers_titles.txt` for `@always_primary_score = 1000`
![image.png](https://cdn.discordapp.com/attachments/1526386397148090528/1526440434950209678/image.png?ex=6a83daef&is=6a82896f&hm=9c3eed3fe902c20c9e7018949903130f9b3b18230106c7445a13b468fd3f169f&)

**generalissimo_aar** · *2026-07-14*
Bro went crazy

**generalissimo_aar** · *2026-07-14*
thank you so much!
