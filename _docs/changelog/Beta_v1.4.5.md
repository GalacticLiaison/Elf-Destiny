# Beta_v1.4.5

CONSIDER RECORDING A VIDEO DEV DIARY FOR THIS PATCH DEMONSTARTING NEW FETAURES!!!!
- make youtube number go up

### IN DEV DIARY explain that although tyour adviser will do these things like matchmaking, they are currently AI only. I will one day make Aeluran Adviser a 100% playable role

## Should We create Aleuran Inquisitor Discord role now?

Tinkered with some of the Artifacts 
- adjusted bonus modifiers
- fixed rarity/bonus mismatch (need to test)

Fixed broken Vizier functionality

Acended Tribal should now have access to feudal tax and levy contracts

Took yet another stab at fixing the elf blood child bug

Aeluran Matching Making 
 - offering already married women
 - "Wants my daughter to marry herself" https://discord.com/channels/1179053540161880074/1225101355606343735
 - can marry self
 - heir text is wrong

# Action Plan
- finish skeleton and fill it in
- dont put anything "questionable/too far" yet, just basic features for now!

## Tasks
- UI respect score tooltip
- flush out aeluran government
- matchmaking: "request for child" character interaction
- matchmaking: finish intro quality score widget
   - grant hook bonus
- regency: balance respect score swing values

## Polish Ideas

- make new Aeluran event header?
- The matches may have too generous of genetic traits currently and may need a slight nerf
- can we use the event window from grand activities? try!
    - if need be, find the ui component that launches an activity and copy it into custom event widget or something

 Ideas for new match candidates
 - Wise women/man, maybe with Gardner/Herbalist, maybe a doctor
 - lame but offers you a dowry
 - renowned tribal warrior (strong/blademaster/etc)
 - a rare chance to be offered a possessed lunatic albino, with Arbitrary,Fickle,Eccentric (maybe with an unusually high elf trait level to make it tempting)
 - match with claim to neighbors lands?
 - maybe a VERY rare chance at newly generated bloodline characters
    - make each have archetypical traits that emphasize those bloodlines
    - NOTE: I believe this may already be a thing but is either inactive code or gated behind something
 - elf of distant land, they have aeluran religion but random ethnicity/culture
   - has traveler/adventurer traits
 - aeluran Matriarch
   - children give born into the red trait (secret from character creation)

   NEW AELURAN GOVERNMENT TYPE!
      - primary holding church
      - please thoroughly review _governments.info options
      - may need to make tribal church holdings a thing

   MAY NEED TO IMPLEMENT AELURAN RESPECT SCORE NOW!!!
      - literally copy everything about legitamacy! UI and currency!
      at high respect levels aeluran adviser starts down path of best friend with ruler instead of tyrant 

   NEED NEW VASSAL CONTRACT!

   New education type? Aeluran Servant?

   Maybe giving in to aelurans grants 
   - stress loss
   - fertility
   - better genetic chance
   - cheaper ascension and blessing cost!

   maybe if there are enough unhappy aeluran rulers close togethe (even across lieges), they band together to form a new kingdom apointing a more worthy male 

   could turn players government into an aeluran servant gov

   event where aeluran sister arrests leiege and keeps him/her in their prison!

   make fecund an actual aeluran ability, turn on at will!

   enable matchmaking for AI, it can be handled differently but send a message if players children are chosen, penalities for refusing

   having the player character lined up in front of a more powerful lord as a marriage option is fire though, maybe player can enhance odds of being chosen!!

   events:
   - SHAME naked walk througn capital, maybe for vassals too

   the build new church holding for adviser still is selecting vassals owned counties

   the red sister and aelurana dviser need game concept tool tips like vassal does in the character profile UI

   aeluron sisters have little autonomy in their own matchmaking

   aelrona rtillery are mandatory

# REGENCY NOTES

- genderlaw seems to matter!
- still need to figure out why adviser and regent are mutually exclusive! 

- Regent is a council position SO it is mutually exclusive with all other counciler positions!
   - maybe we can see if this logic is set somewhere and not hard coded

- visier is a cover over spouse
   - it sets viser, then removes spouse
- YET it STILL exisits at same time as Regent! More investigation needed


##### ACTION PLAN
- wonderful, the gui should be good now
- make aeluran adviser IDENTICAL to vizier and see if we can get it to populate at same time as regeny
   - Aeluran regency must also be identical to vizier one!

NOTE: we may need to alter the council gui again to be identical to vizier

THEN once (if) we have it working
- start adding back features until it either works or breaks to identify the issue!

test the new aeluran adviser arriving event

try to use swing scale score as points on the legitamacy board


### is_diarch_valid!!!!


Should implement twins/triplets/quad/etc naming on twins perk
aeluran adviser should offer herself!

donate crystal to the order to recieve the very best matching services,
like "show me only giant, or beautiful"
also just a better percentasge chance at rarer traits!!
really look to other existing activities to explore all features like bars and other widgets
respect effects matches


NEW Character Interactions:
if you have open extra slots, request matchmaking
for any children without matches, character interaction to request matchmaking



# Aeluran Respect

maybe "domination" is the regent scale checkpoints but respect is what shifts it to those checkpoints

if cant control of reference current scale value
- we cant check flags set at each balance of power mile stone
OR
- we can manage respect seperate from the scales and then change balance to that value


Create a "story" that updates "monthly swing" like Dynamic regency does
- this monthly swing will be the aeluran respect score variable assigned to that ruler
- aeluran respect score variable could maybe just be used in the legitamacy tooltip

regency tools
- game_concept_strife_opinion
diarch_loyalty - trigger can get trigger as value using )"
diarchy_swing - trigger - this may literally be the scale value


Step 1: On Red Sister appointment assign that ruler an aeluran respect variable.
Step 2: On Regenncy/Red Sister Appointment start a monthly "Story" for that ruler
Step 3: The Story aggregates ALL diferent positive and negative Aeluran Respect values into a single +/- value (Create a Scripted Value)
   - we may need to save the change value each month as a static value to display in the UI
Step 4: change_diarchy_swing = diarchy_swing(current value) + change_value