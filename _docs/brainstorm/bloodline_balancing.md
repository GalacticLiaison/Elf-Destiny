# ====== Pieces ======

## Vanilla Modifiers
### Base
- learning
- intrigue
- martial
- diplomacy
- stewardship

### Dread
- monthly_dread
- monthly_prestige_gain_per_dread_add
- monthly_prestige_gain_per_dread_mult
- monthly_piety_gain_per_dread_add
- monthly_piety_gain_per_dread_mult
- dread_baseline_add
- dread_gain_mult
- dread_loss_mult
- dread_decay_add
- dread_decay_mult
- dread_per_tyranny_add
- dread_per_tyranny_mult
- knight_effectiveness_per_dread
- men_at_arms_maintenance_per_dread_mult
- intimidated_vassal_levy_contribution_add
- intimidated_vassal_tax_contribution_add
- intimidated_vassal_tax_contribution_mult
- intimidated_vassal_levy_contribution_mult
- cowed_vassal_tax_contribution_add
- cowed_vassal_tax_contribution_mult
- cowed_vassal_levy_contribution_add
- cowed_vassal_levy_contribution_mult

### Tyranny
- monthly_tyranny
- tyranny_loss_mult
- tyranny_gain_mult
- dread_per_tyranny_add
- dread_per_tyranny_mult
- knight_effectiveness_per_tyranny

### Legitimacy
- legitimacy_gain_mult
- legitimacy_loss_mult
- legitimacy_baseline_add
- monthly_legitimacy_add
- monthly_prestige_gain_per_legitimacy_level_add
- monthly_prestige_gain_per_legitimacy_level_mult
- monthly_piety_gain_per_legitimacy_level_add
- monthly_piety_gain_per_legitimacy_level_mult

### Prestige
- holding_build_prestige_cost
- $HOLDING_TYPE$_build_prestige_cost
- $HOLDING_TYPE$_holding_build_prestige_cost
- $TERRAIN_TYPE$_holding_construction_prestige_cost
- $TERRAIN_TYPE$_construction_prestige_cost
- build_prestige_cost
- monthly_prestige
- monthly_prestige_gain_mult
- monthly_prestige_gain_per_legitimacy_level_add
- monthly_prestige_gain_per_legitimacy_level_mult
- monthly_prestige_gain_per_dread_add
- monthly_prestige_gain_per_dread_mult
- monthly_prestige_gain_per_knight_add
- monthly_prestige_gain_per_knight_mult
- monthly_prestige_gain_per_happy_powerful_vassal_add
- monthly_prestige_gain_per_happy_powerful_vassal_mult
- monthly_prestige_from_buildings_mult
- prestige_level_impact_mult
- hostage_prestige_mult
- prowess_per_prestige_level
- monthly_dynasty_prestige
- monthly_dynasty_prestige_mult
- learning_per_prestige_level
- stewardship_per_prestige_level
- martial_per_prestige_level
- diplomacy_per_prestige_level
- intrigue_per_prestige_level
- stress_loss_per_prestige_level

### Piety
- monthly_piety
- monthly_piety_gain_mult
- monthly_piety_gain_per_dread_add
- monthly_piety_gain_per_dread_mult
- monthly_piety_gain_per_legitimacy_level_add
- monthly_piety_gain_per_legitimacy_level_mult
- monthly_piety_gain_per_knight_add
- monthly_piety_gain_per_knight_mult
- monthly_piety_gain_per_happy_powerful_vassal_add
- monthly_piety_gain_per_happy_powerful_vassal_mult
- monthly_piety_from_buildings_mult
- hostage_piety_mult
- piety_level_impact_mult
- diplomacy_per_piety_level
- martial_per_piety_level
- stewardship_per_piety_level
- intrigue_per_piety_level
- prowess_per_piety_level
- learning_per_piety_level
- stress_loss_per_piety_level
- faith_creation_piety_cost_add
- faith_creation_piety_cost_mult
- faith_conversion_piety_cost_add
- faith_conversion_piety_cost_mult
- build_piety_cost
- holding_build_piety_cost
- $HOLDING_TYPE$_build_piety_cost
- $HOLDING_TYPE$_holding_build_piety_cost
- $TERRAIN_TYPE$_construction_piety_cost
- $TERRAIN_TYPE$_holding_construction_piety_cost

### Control
- monthly_county_control_growth_add
- monthly_county_control_growth_factor
- monthly_county_control_growth_at_war_add
- monthly_county_control_growth_at_war_factor
- monthly_county_control_growth_add_even_if_baron
- monthly_county_control_growth_factor_even_if_baron
- monthly_county_control_decline_add
- monthly_county_control_decline_factor
- monthly_county_control_decline_at_war_add
- monthly_county_control_decline_at_war_factor
- monthly_county_control_decline_add_even_if_baron
- monthly_county_control_decline_factor_even_if_baron
- controlled_province_advantage
- uncontrolled_province_advantage

### Scheme
- scheme_success_chance (schemes only)
- scheme_power (schemes only)
- scheme_secrecy (schemes only)
- scheme_resistance (schemes only)
- owned_scheme_secrecy_add
- scheme_discovery_chance_mult
- $SCHEME_TYPE$_scheme_power_add
- $SCHEME_TYPE$_scheme_power_mult
- $SCHEME_TYPE$_scheme_resistance_add
- $SCHEME_TYPE$_scheme_resistance_mult
- max_$SCHEME_TYPE$_schemes_add
- scheme_power_against_$SCRIPTED_RELATION$_add
- scheme_power_against_$SCRIPTED_RELATION$_mult
- owned_hostile_scheme_success_chance_add
- personal_scheme_power_add
- personal_scheme_power_mult
- personal_scheme_resistance_mult
- personal_scheme_resistance_add
- max_personal_schemes_add
- owned_personal_scheme_success_chance_add
- enemy_personal_scheme_success_chance_add
- hostile_scheme_power_add
- hostile_scheme_power_mult
- hostile_scheme_resistance_add
- hostile_scheme_resistance_mult
- max_hostile_schemes_add
- enemy_hostile_scheme_success_chance_add
- diplomacy_scheme_power
- diplomacy_scheme_resistance
- intrigue_scheme_power
- intrigue_scheme_resistance
- learning_scheme_power
- learning_scheme_resistance
- martial_scheme_power
- martial_scheme_resistance
- stewardship_scheme_power
- stewardship_scheme_resistance
- prowess_scheme_power
- prowess_scheme_resistance

### Stress
- stress_gain_mult
- stress_loss_mult
- stress_loss_per_piety_level
- stress_loss_per_prestige_level
- diplomacy_per_stress_level
- intrigue_per_stress_level
- learning_per_stress_level
- martial_per_stress_level
- stewardship_per_stress_level
- prowess_per_stress_level
- monthly_income_per_stress_level_add
- monthly_income_per_stress_level_mult

### Genetic
- positive_random_genetic_chance
- negative_random_genetic_chance
- genetic_trait_strengthen_chance
- inbreeding_chance
- personality trait chance
- fertility
- years_of_fertility
- negate_fertility_penalty_add

### Advantage
- advantage
- random_advantage
- led_by_owner_extra_advantage_add
- independent_primary_defender_advantage_add
- coastal_advantage
- attacker_advantage
- defender_advantage
- defender_holding_advantage
- $TERRAIN_TYPE$_advantage
- enemy_terrain_advantage : "Counters enemy defensive terrain advantage"
- winter_advantage
- defender_winter_advantage
- controlled_province_advantage
- uncontrolled_province_advantage
- tolerance_advantage_mod
- advantage_against_coreligionists
- same_heritage_county_advantage_add

### Opinion
- opinion_of_male_rulers
- opinion_of_female_rulers
- opinion_of_parents
- opinion_of_liege
- opinion_of_vassal
- opinion_of_same_faith
- opinion_of_different_faith
- opinion_of_different_faith_liege
- ignore_opinion_of_different_faith
- opinion_of_same_culture
- opinion_of_different_culture
- ignore_negative_opinion_of_culture
- general_opinion
- attraction_opinion
- spouse_opinion
- child_opinion
- player_heir_opinion
- eligible_child_opinion
- eligible_child_except_player_heir_opinion
- child_except_player_heir_opinion
- close_relative_opinion
- twin_opinion
- dynasty_opinion
- dynasty_house_opinion
- courtier_opinion
- guest_opinion
- courtier_and_guest_opinion
- councillor_opinion
- prisoner_opinion
- liege_opinion
- fellow_vassal_opinion
- vassal_opinion
- direct_vassal_opinion
- powerful_vassal_opinion
- religious_vassal_opinion
- same_faith_opinion
- different_faith_opinion
- different_faith_liege_opinion
- different_faith_county_opinion_mult
- different_faith_county_opinion_mult_even_if_baron
- ignore_different_faith_opinion
- same_culture_opinion
- different_culture_opinion
- ignore_negative_culture_opinion
- $FAITH$_opinion
- $CULTURE$_opinion
- $RELIGIOUS$_opinion
- $RELIGIOUS_FAMILY$_opinion
- realm_priest_opinion
- clergy_opinion
- religious_head_opinion
- $VASSAL_STANCE$_opinion
- $VASSAL_STANCE$_same_faith_opinion
- $VASSAL_STANCE$_different_faith_opinion
- $VASSAL_STANCE$_same_culture_opinion
- $VASSAL_STANCE$_different_culture_opinion
- $GOVERNMENT_TYPE$_opinion_same_faith
- $GOVERNMENT_TYPE$_vassal_opinion
- $GOVERNMENT_TYPE$_opinion
- independent_ruler_opinion
- county_opinion_add
- county_opinion_add_even_if_baron
- travel_companion_opinion
- strife_opinion_gain_mult
- strife_opinion_loss_mult

### Terrain
- $TERRAIN_TYPE$_tax_mult
- $TERRAIN_TYPE$_levy_size
- $TERRAIN_TYPE$_development_growth
- $TERRAIN_TYPE$_development_growth_factor
- $TERRAIN_TYPE$_construction_gold_cost
- $TERRAIN_TYPE$_construction_prestige_cost
- $TERRAIN_TYPE$_construction_piety_cost
- $TERRAIN_TYPE$_holding_construction_gold_cost
- $TERRAIN_TYPE$_holding_construction_prestige_cost
- $TERRAIN_TYPE$_holding_construction_piety_cost
- $TERRAIN_TYPE$_travel_danger
- $TERRAIN_TYPE$_supply_limit
- $TERRAIN_TYPE$_supply_limit_mult
- $TERRAIN_TYPE$_attrition_mult
- $TERRAIN_TYPE$_cancel_negative_supply
- $TERRAIN_TYPE$_min_combat_roll
- $TERRAIN_TYPE$_max_combat_roll
- $TERRAIN_TYPE$_advantage
- enemy_terrain_advantage
- coastal_advantage
- no_disembark_penalty

### Building
- building_slot_add
- build_speed
- build_gold_cost
- build_prestige_cost
- build_piety_cost
- holding_build_speed
- holding_build_gold_cost
- holding_build_prestige_cost
- holding_build_piety_cost
- $HOLDING_TYPE$_build_piety_cost
- $HOLDING_TYPE$_build_prestige_cost
- $HOLDING_TYPE$_holding_build_prestige_cost
- $HOLDING_TYPE$_holding_build_piety_cost
- $HOLDING_TYPE$_build_speed
- $HOLDING_TYPE$_holding_build_speed
- $HOLDING_TYPE$_build_gold_cost
- $HOLDING_TYPE$_holding_build_gold_cost
- $TERRAIN_TYPE$_construction_gold_cost
- $TERRAIN_TYPE$_construction_prestige_cost
- $TERRAIN_TYPE$_construction_piety_cost
- $TERRAIN_TYPE$_holding_construction_gold_cost
- $TERRAIN_TYPE$_holding_construction_prestige_cost
- $TERRAIN_TYPE$_holding_construction_piety_cost
- monthly_piety_from_buildings_mult
- monthly_prestige_from_buildings_mult

## Custom Modifiers
- increased odds of being born with the lunatic trait
- increased odds of beauty traits
- higher odds of getting or reinforcing a magic talent trait
- enchant spell success chance

## Archetype Ideas
- Tyranny based
- Dread Based
- Seduce Based
- Stress Based
    - could have reduced stats and income from higher stress as a setback! Fragile psyche archetype

- Fiercely independent bloodline
    - independent_primary_defender_advantage_add

- Heated Warrior
    - led_by_owner_extra_advantage_add

- Family minded

- Grand hosts that love to party

- Universally Loved (Empath)
    - ignores all different faith/culture opinion
    - makes friends easier!
    - con: weak more common
    - con: maybe stress has bigger impact

- Genetically Unstable!
    - higher inbreeding/negative and higher positive chance
    - higher multibirth rates
    - *SPECIAL* - Maybe something with spawning beats pit...

# Misc
- Can bloodlines have trait tracks?

# ====== Bloodlines ======

// High Elves
## Valerith
_Desc:_
Millenniums of breeding focused on enhancing the flesh allow them to coil other lords around their elegant fingers. However, as a result, they themselves suffer from a total lack of self control. They grow addicted to indulgences and are susceptible to the same seductions they lay upon others.

_Pros:_
	fertility = 0.3
	attraction_opinion = 30
	max_seduce_schemes_add = 2
	seduce_scheme_power_add = 10
	seduce_scheme_power_mult = 0.5
	scheme_power_against_lover_add = 30
	stress_loss_mult = 0.3

_Cons:_
	seduce_scheme_resistance_add = -50

_Physical:_
    Silver Hair

## Serelion
_Desc:_
Serelions have a reputation for pragmatic cruelty and strict rule. The dread they inspire amongst their subjects gives them greater control of their lands, but their terrified troops are seldom truly loyal and have been seen to perform fight worse on the battlefield compared to their contemporaries.

NOTE: maybe need to reshape Serelions to be centered around the control mechanic.

_Pros:_
	intrigue = 2
	attraction_opinion = 5
	dread_gain_mult = 0.2
	dread_baseline_add = 10
	dread_decay_mult = -0.5
	monthly_county_control_growth_add = 0.3
	knight_limit = 2
	domain_limit = 1
    
_Cons:_
	hard_casualty_modifier = 0.25
	enemy_hard_casualty_modifier = -0.25

_Physical:_
    Purple Eyes

## Gwynthorn
_Desc:_
House Gwynthorn is known for its industriousness and obsessive diligence. They are relentless caretakers of their lands, but at a cost. Their complete focus on duty has led to many Gwynthorns stressing themselves to an early grave.

_Pros:_
	stewardship = 2
	domain_limit = 2
	development_growth = 0.1
	development_growth_factor = 0.25

_Cons:_
	stress_gain_mult = 0.35
	stress_loss_mult = -0.2
	life_expectancy = -10

_Physical:_

## Daelurin
_Desc:_
House Daelurin is known for their massive size and martial prowess. Historical records of encounters with Giants were likely sightings of Daelurin house members. Generations of focusing on breeding for battle and conquest has led to these formidable lords. While they may be great warriors of gargantuan size, a consequence of this specialization is a decrease in intelligence and sluggish movement

_Pros:_
	martial = 2
	knight_limit = 2
	prowess = 10
_Cons:_
	learning = -4
	character_travel_speed = -20

_Physical:_
    Giant Size

## Thundarael
_Desc:_
House Thundarael is known for their pale skin, intelligence, and manic personalities. House Thundarael has focused its breeding on creating powerful spark wielders. Many of the most powerful recorded magi and empowered come from this house. Intrinsic power in their blood allows them to move with great speed, and they acquire new knowledge at an astounding rate. This comes at a great cost, however. Madness is very common among the Thundarael, and many of them are driven to insanity by their own power.

_Pros:_
	learning = 2
	monthly_learning_lifestyle_xp_gain_mult = 0.25
	character_travel_speed = 10
    *SPECIAL:* Higher rates of magically talented traits

_Cons:_
	diplomacy = -2
    *SPECIAL:* Lunatic and melancholic are more common

_Physical:_
    Pale Skin



// Dark Elves


## Fear/Dread Based Bloodline
IMPORTANT NOTE: Maybe Tyranny should be a culture thing, and it feeds into 

_Desc:_
Maybe the most abundant dark elf bloodline. They get power through fear and dread

_Pros:_

- monthly_prestige_gain_per_dread_add
- monthly_piety_gain_per_dread_add
- dread_baseline_add
- dread_gain_mult
- knight_effectiveness_per_dread
- men_at_arms_maintenance_per_dread_mult
- intimidated_vassal_tax_contribution_mult
- intimidated_vassal_levy_contribution_mult
- cowed_vassal_tax_contribution_mult
- cowed_vassal_levy_contribution_mult

- monthly_tyranny
- tyranny_loss_mult
- tyranny_gain_mult
- dread_per_tyranny_add
- dread_per_tyranny_mult
- knight_effectiveness_per_tyranny

_Cons:_


_Physical:_
purple hair... although purple hair may just be a standard dark elf hair color

## Vampire Bloodline
_Desc:_
self explanatory, havent flushed out vampire mechanics so a bit unsure what this bloodline will receive 
_Pros:_
- blood feed scheme success chance

_Cons:_

_Physical:_
.... probably red eyes


## Empath Bloodline
_Desc:_
- Universally Loved (Empath)

_Pros:_
    - ignores all different faith/culture opinion
    - makes friends easier!
    - enchant scheme power

_Cons:_
    - worse at hostile schemes    
    - weak more common
    - maybe stress has bigger impact


_Physical:_
    - pink hair and maybe eyes
    - larger... bosom



## Mutation Bloodline
_Desc:_
a focus on genetic instability, high risk high reward for getting good genetic traits quick but may get bad traits

_Pros:_
- positive_random_genetic_chance
- genetic_trait_strengthen_chance
- very rare chance to get genetic traits no one else can?

_Cons:_
- negative_random_genetic_chance
- inbreeding_chance +++
- very rare chance to get a catastrophic genetic trait no one else can?


_Physical:_
