# Wrap Up

- enchantress unlock mechanics

Elven Adaptability innovation now removes reform cooldown for culture

Accidentally permanently unlocked "challenge rival to a fight" character interaction. Fixed

all history characters have their elf trait mort type or immortal age correct

<!-- under Construction -->
- Now will randomly appear on characters of Elven culture
    - on_guest_arrived_from_pool
    - on_join_court
    - yearly_culture_pulse

Added "OK" dismiss button to tutorial window

You can only attempt to entrance a character with a higher elf level if you have the Enchantress trait!

There will be a decision that Entranced characters will be able to take to try to remove the trait and hook. It will be the same Skill duel from the Entrance scheme. If they fail however they will instead level the trait even more, further falling under the control of their Entrancer!

Basically the mod makes several faith tenets disappear in faith reformations, mostly ones added in the Persia update. Selection of existing faiths that have the doctrines is fine, but I don’t think new player-created faith have the option to select such tenets

SEE BOTTOM OF PAGE FOR LEVEL 4 GENETICS BUG

TEST ENTRANCE STABILITY
TEST ENTRANCE/ENTHRALL

# Beta_v1.2.0

## Religion

- Elf Holy Sites will now be created at Expedition sites you complete three trials at
- NEW! Spark Syncretism Tenet
- Now have a chance to encounter a couple Valar (Gods) at expeditions sites after the portal has been opened
- Selecting an Aeluran Sister offers a convert to Aeluran faith character interaction
- Aeluran Sisters also now have the ability to control the gender of their unborn child like the Benne Gesserit through a new character interaction
- Entranced => Enthralled trait needs testing
    - could just use a debug decision to apply trait but might as well test full thing?

## Story

New event that allows player to move portal pieces to their capital so they can restore the Grand Portal there.

Restore The Portal Event got a minor facelift

## Traditions

### NEW! Blessing: Endless Lord
- First born child born is an exact genetic copy of their parent lord.
- Other children born normally
- Child receives all standard genetic traits of their lord parent.
- Elf traits treated differently, first born can still ascend higher than parent
- Child receives a new trait that tracks how many iterations of that lord there has been

### NEW! Blessing: Beguiling Nature
- Characters gain Lustful after 3 seducing three lords and upgrade it to Passionate after seducing 5 lords.
- Unlocks new **Entrance** Scheme
- Characters with the Seductress Lifestyle trait will upgrade it to Enchantress after 3 successful Entrance Schemes. 

### NEW! Tradition: Aeluran Etiquette
- Increases county religion and culture conversion speeds.

## Introducing Valar Blessing!

### NEW! Blessing of Vána
- Gift Of Many Mothers: The people of this culture will give birth to six girls for every one boy born
- +3 stewardship; -3 martial

### NEW! Blessing of Tulkas Astaldo
- Gift Of Endless Armies: The people of this culture will give birth to six boys for every one girl born
- +3 martial; -3 stewardship;

## Ascension

### The Remainder of the Elf traits have been added to the game bringing the total levels of Ascension to 12!
- Players can not Ascend past High Elf until after the portal has been opened.
- Players can not yet Ascend to the highest tier of traits (Godhood)
### Elf Traits
- Now give Elves huge fertility penalties that increase in severity as you Ascend.
    - added a yearly check to make sure elves are at least having some kids
- Now give no prowess loss from age
- Did a fundamental re-work of how Elf traits work
    - Now instead of using the "life expectancy stat", Elf traits grant "immortality".
    - Children start with an elf trait version that has no immortality and have it swapped to an immortality version at age 20
    - When an Elf has reached an age when they should start to be able to die, the traits are swapped back and they are again given a version of their elf trait without immortality
    - Throughout their lifespan, at an appropriate age, their visual immortality age will be increased
    - As a result now attraction will not be loss from age until an appropriate age
    - The higher Elf trait levels stay young looking forever

## Magic
Started to dip the mod's toes into magic!
### NEW! Magi Lifestyle trait
### NEW! genetic magic ability traits!
    - Spark Gifted
    - Spark Savant
    - Spark Prodigy
### NEW! Entrance scheme unlocked by "Beguiling Nature" blessing. This is the first official "spell" of the mod.
    - Make target "obsessed" with you via your Spark powered aura through "chance" encounters at events like Feasts.
    - grants a perpetual hook on target if successful
    - odds of success are lowered if trying to Entrance a character of same elf tier. Impossible to entrance character of higher elf tier without the new Enchantress Trait
### NEW! Enchantress trait
    - First trait of a series of planned traits that represent a type of Magi specialization.
    - requires the Seductress Lifestyle trait to unlock

## Aelurans

- Added annual logic to replace dead Matriarch/Matrons/Sisters
    - This is a very simplistic solution that will be expanded upon in the future with proper elections and what not.
- Added event to take magically talented daughters of Elf Lords to be trained at the Aeluran's HQ at age 7
- Added event where they return as trained Aeluran Sister Magi at age 16
- Added new background Art for Aeluran Advisor
Aeluran Advisor
- Magistration (Religious Relations):
    - Now has chance to gain a perpetual basic hook called "Religious Exaltation" on a courtier or vassal
    - Now has a chance to recruit a new Magi to join your court
    - Now has a chance to receive a regiment of special NEW! MAAs "Aeluran Magi" sent from the Order
- Indoctrinate (Convert):
    - now has a small chance of increasing control in selected county
    - now has a small chance of converting culture in selected county
- Undermine (Fabricate Claim):
    - now has a small chance of converting county to your faith
    - now has a small chance of converting enemy heir to your faith
    = now has a small chance of starting a peasant revolt in target lords realm

## Misc

Elf Beautification
- removed giant like head change for Daelurin bloodline trait
- NEW! Game Rule: apply or remove prowess muscle gain effect for female characters
- NEW! Game Rule: apply or remove makeup effect from Beauty traits
- Added manual style choices to the Valerith family. Might do others in the future too!
- added some new DNA for a few Elfs from @markus!

New Base Elf Ethnicity
Added rules explanation to Expedition Trial of Cunning
Added new "event decoration" to Elf Destiny events. Tells player what "DLC" it came from.

## Bug Fixes/Tweaks

MAA
- The Nerf Hammer has returned!
    - Some stats reduced
    - Elf Units will now cost significantly more to balance how strong they are

Adventurer Trait
- was too OP giving minus 50% MAA maintenance right off the bat for just going on a single expedition. Now must have fully leveled adventurer to get that bonus

Tradition: Adventurer Guilds
    - now can encounter two trials per Expedition

Tradition: Familial Familiarity
    - now properly unlocks family consanguinity

Tradition: Tribal Ascension
    - fixed loss of succession options
    - some feudal contract options restored

Tradition: The Rut
    - Rut was a bit too frequent happening every year. Changing to occur once a decade

Tradition: Familial Familiarity
    - Accidentally disabled Purer/Purest-Blooded inheritance, should be working again

Elven Adaptability innovation now removes reform cooldown for culture

Elf Religion Names = Elf Culture Names

Ascension ritual is now doable for all Elfs even if the Sigil Of The Realm Lord hasn't been found yet

Portal pieces are now removed after restoring the Grand Portal

## ART STILL NEEDED ##

- Shrine Backgrounds
- Portal Piece Discovery Background

# The religion patch

<!-- REVIEW AVAILABLE IN RULER DESIGNER FOR TRAITS -->

<!-- As much as attraction bonuses make sense for elves, don't they all become irrelevant by like age 45 unless the character is immortal with an immortal age set to less than the age cutoff? Similar to how NPC rulers will reject marriages due to 'low fertility' based solely on age rather than the 'years of fertility' parameter right? I think it's all hard coded. 

You can however have traits set the immortal age to keep a character attractive to NPCs -> perhaps default elf traits should set the character as immortal with an attractive age. A yearly check based on type of elf/expected lifespan could then replace the immortal elf trait with an 'old elf'  that turns off immortality and makes elf no longer attractive as far as NPCs are concerned and appear older or something. -->


<!-- Traditions
- Aeluran etiquette
    - increase county religion and culture conversion
    - make it a "secret" tradition that only shows up in menu after unlocking
        - make sure the player knows its a secret tradition when getting it

Blessings
tradition_endless_lord
<!-- - first born child is an exact genetic clone of you -->
<!-- - if your a male ruler guaranteed son -->
<!-- - if female guaranteed daughter -->
<!-- - try to add a special on_birth name event where it presumes you want to use same name and add Is -->
<!-- - trait icon is reincarnation baby colored different with elf ears -->
<!-- - trait tracks how many iteration this child is -->

beguiling nature
<!-- lustful => passionate -->
<!-- - at 5 successful seduce against other lords schemes -->
<!-- entrance lesser soul scheme -->
<!-- - this is a spell and grants magi experience -->
<!-- -- dont need to be magi but success chance is far greater -->
<!-- renown for successful seduce/romances -->
<!-- unlocks enchantress trait
    - seductress upgrade requires 3 successful entrance schemes-->
<!-- - can entrance scheme souls of equal or below and it succeeds more. -->

<!-- Good Looking Elves -->
<!-- - remove beauty change -->
<!-- - remove head change for Daelurin -->
<!-- - remove physical prowess change fro females -->

<!-- Aeluran Advisor -->
<!-- - Tasks -->
- for mage troop stuff task just give "special" units

<!-- Send daughter/daughter is taken to the school event -->

holy sites mechanics
<!-- - add description to barony description when choosing site location -->

move portal pieces decision!
    <!-- - still needs event styling, portal pieces on carts art, maybe for decision window too -->
    <!-- - maybe generate new portal art 7:4 -->
    <!-- add line about you having to pay for a new temple to be built there as a bribe to the aeluran matriarch -->
        <!-- - add her to the event -->

<!-- 
tutorial screen gets an ok dismiss button

elf among the culture people

No prowess loss from age add to elf traits
-->

<!-- can I reccommend merging the "reserved names" of the religion and the "cultural names" of the Elf culture, otherwise the only names avaliable to someone who doesnt take the culture are legolas/legalass -->

<!-- portal piece discovery event polished up -->
<!-- - pieces also removed on portal restoration -->

Adventurer Trait 
- was too op giving minus 50% maa maintenance right off the bat for just going on a single expedition. Now must have fully leveled adventurer to get that

<!-- aeluran role management
    - replace matriarch/matrons/etc -->
<!-- 
    Uhm, is there any plan to include a Spark syncretism trait for the religion? I've spoken up before but that was in the steam comments. I just feel like some faiths like Vidalism could get along well... -->

<!-- My only request in that regard is that you make socotra an exploration and potential holy site please 🙏 -->

<!-- adventurer guilds now allows two trials per run. -->

<!-- tribal ascended: "Also, Ascended Tribal seems to be problematic right now, since I can't change my succession(the option disappeared) and we lose all the feudal contracts." -->

<!-- challenge rival to a fight option is perm unlocked... -->

<!-- uh i think i might have found and issue with the "elven adaptability" there is a cooldown between each reform, i think somewhere between 20-60 years. that puts a significant limit on how many traditions you can assimilate into your culture.
is there a way of lowering that cooldown? -->

<!-- The elves that spawn at the start marry themselves to humans and degrade the odds of passing on their bloodline. -->

<!-- cut fertility!!!: "Would be nice even as a small QoL for the next update" -->

<!-- twin dieties -->
<!-- Blessings -->
<!-- - add a 1 of 7 stat boost modifier to characters -->

<!-- aeluran pick gender -->

<!-- cant take last tradition choice bug -->

<!-- It pertains to the "Familial Familiarity" blessing. I acquired this but am still not able to intermarry. I am Orthodox but I believed it would take precedence. Is it possible to override faith restrictions with the blessings? -->

<!-- third deity, queen of the seas
- naval speed
- travel safety
- ports give double the gold because of better fishing -->

<!-- rut moved to every 3 years -->
<!-- is it being applied to everyone it should? -->

## Beginning of Magic?

<!-- magi and empowered trait polished.
three gifted level genetic traits

everything just gives prowess for now -->

<!-- Aratar: https://lotr.fandom.com/wiki/Aratar
Valar: https://lotr.fandom.com/wiki/Valar
Maiar: https://lotr.fandom.com/wiki/Maiar -->

<!-- 
BTW dunno if you've already made this edit yet, but the cleanest overwrite for that one tradition to properly allow consanguinous marriage despite faith restrictions is to modify relation_with_character_is_incestuous_in_faith_trigger to add an exception for the tradition -->


<!-- # IMPORTANT put on_actions in the best performant quarterly/yearly/etc -->


<!-- Awesome mod mate, but I want to report a common bug that I encounter maybe its just me. When I change to elf culture, I was never able to get kids with genius trait (Both parents had genius trait) until I got the reform culture "Noble Husbandry". I was wondering if you could take a look at that, or maybe make an option to have the 'radiant, savants, titans' traits removed through a game rule option. -->

<!-- It seems like if you don't have the Noble husbandry tradition and two people with top traits have children the trait can still reinforce, however it leads to losing the trait altogether. In my case I've had two geniuses have children and they end up without any intellect trait altogether (checked for bastardry as well).
Eastpointed — 01/09/2024 10:41 AM
I hadnt thought that a possibility..  thought the game would handle that.... sigh may have to revert back to my manual inheritance script
Eastpointed — 01/09/2024 10:52 AM
what I could do is allow people whos parent had genius to get the tier 4 trait, then immediately on birth (or rather right before it) swap out tier 4 for tier 3 if they dont meet the culture requirements -->