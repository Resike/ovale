local _, Ovale = ...
local OvaleScripts = Ovale.OvaleScripts

do
	local name = "ovale_hunter_spells"
	local desc = "[6.0.2] Ovale: Hunter spells"
	local code = [[
# Hunter spells and functions.

Define(a_murder_of_crows 131894)
	SpellInfo(a_murder_of_crows cd=60 focus=30)
	SpellInfo(a_murder_of_crows buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(a_murder_of_crows_talent 13)
Define(aimed_shot 19434)
	SpellInfo(aimed_shot focus=50)
	SpellInfo(aimed_shot buff_focus=thrill_of_the_hunt_buff buff_focus_amount=-20 if_spell=thrill_of_the_hunt)
	SpellAddBuff(aimed_shot thrill_of_the_hunt_buff=-1 if_spell=thrill_of_the_hunt)
Define(arcane_shot 3044)
	SpellInfo(arcane_shot focus=30)
	SpellInfo(arcane_shot buff_focus=thrill_of_the_hunt_buff buff_focus_amount=-20 if_spell=thrill_of_the_hunt)
	SpellInfo(arcane_shot buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
	SpellAddBuff(arcane_shot thrill_of_the_hunt_buff=-1 if_spell=thrill_of_the_hunt)
	SpellAddTargetDebuff(arcane_shot serpent_sting_debuff=1 if_spell=serpent_sting)
Define(barrage 120360)
	SpellInfo(barrage cd=20 focus=60)
	SpellInfo(barrage buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(bestial_wrath 19574)
	SpellInfo(bestial_wrath cd=60)
	SpellInfo(bestial_wrath buff_cdr=cooldown_reduction_agility_buff)
	SpellAddBuff(bestial_wrath bestial_wrath_buff=1)
Define(bestial_wrath_buff 19574)
	SpellInfo(bestial_wrath_buff duration=10)
Define(black_arrow 3674)
	SpellInfo(black_arrow cd=30 focus=35)
	SpellInfo(black_arrow addcd=-6 if_spell=trap_mastery)
	SpellInfo(black_arrow buff_cdr=cooldown_reduction_agility_buff)
	SpellAddBuff(black_arrow lock_and_load_buff=2 itemset=T17 itemcount=4)
	SpellAddTargetDebuff(black_arrow black_arrow_debuff=1)
Define(black_arrow_debuff 3674)
	SpellInfo(black_arrow_debuff duration=20 tick=2)
Define(bombardment 35110)
Define(bombardment_buff 82921)
	SpellInfo(bombardment_buff duration=5)
Define(careful_aim 34483)
Define(chimaera_shot 53209)
	SpellInfo(chimaera_shot cd=9 focus=35)
Define(cobra_shot 77767)
	SpellInfo(cobra_shot focus=-14)
Define(counter_shot 147362)
	SpellInfo(counter_shot cd=24)
Define(dire_beast 120679)
	SpellInfo(dire_beast cd=30)
Define(enhanced_kill_shot 157707)
Define(enhanced_traps 157751)
SpellList(exotic_munitions_buff frozen_ammo_buff incendiary_ammo_buff poisoned_ammo_buff)
Define(explosive_shot 53301)
	SpellInfo(explosive_shot cd=6 focus=15)
	SpellInfo(explosive_shot buff_no_cd=lock_and_load_buff buff_focus_none=lock_and_load_buff if_spell=black_arrow)
	SpellAddBuff(explosive_shot lock_and_load_buff=-1 if_spell=black_arrow)
Define(explosive_trap 13813)
	SpellInfo(explosive_trap cd=30)
	SpellInfo(explosive_trap addcd=-6 if_spell=trap_mastery)
	SpellInfo(explosive_trap cd=15 if_spell=enhanced_traps)
	SpellInfo(explosive_trap cd=12 if_spell=enhanced_traps if_spell=trap_mastery)
Define(explosive_trap_debuff 13812)
	SpellInfo(explosive_trap_debuff duration=20 tick=2)
Define(focus_fire 82692)
	SpellAddBuff(focus_fire focus_fire_buff=1 frenzy_buff=0)
Define(focus_fire_buff 82692)
	SpellInfo(focus_fire_buff duration=20)
Define(focusing_shot 152245)
	SpellInfo(focusing_shot focus=-50)
Define(focusing_shot_marksmanship 163485)
	SpellInfo(focusing_shot_marksmanship focus=-50)
Define(focusing_shot_talent 20)
Define(frenzy_buff 19615)
	SpellInfo(frenzy_buff duration=30 maxstacks=5)
Define(frozen_ammo 162539)
	SpellAddBuff(frozen_ammo frozen_ammo_buff=1)
Define(frozen_ammo_buff 162539)
	SpellInfo(frozen_ammo_buff duration=3600)
Define(glaive_toss 117050)
	SpellInfo(glaive_toss cd=15 focus=15)
	SpellInfo(glaive_toss buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(glyph_of_explosive_trap 119403)
Define(incendiary_ammo 162536)
	SpellAddBuff(incendiary_ammo incendiary_ammo_buff=1)
Define(incendiary_ammo_buff 162536)
	SpellInfo(incendiary_ammo_buff duration=3600)
Define(kill_command 34026)
	SpellInfo(kill_command cd=6 focus=40)
	SpellInfo(kill_command buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(kill_shot 53351)
	SpellInfo(kill_shot cd=10 target_health_pct=20)
	SpellInfo(kill_shot target_health_pct=35 if_spell=enhanced_kill_shot)
Define(lock_and_load_buff 168980)
	SpellInfo(lock_and_load_buff duration=15 maxstacks=2)
Define(multishot 2643)
	SpellInfo(multishot focus=40)
	SpellInfo(multishot buff_focus=bombardment_buff buff_focus_amount=-25 if_spell=bombardment)
	SpellInfo(multishot buff_focus=thrill_of_the_hunt_buff buff_focus_amount=-20 if_spell=thrill_of_the_hunt)
	SpellInfo(multishot buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
	SpellAddBuff(multishot thrill_of_the_hunt_buff=-1 if_spell=thrill_of_the_hunt)
	SpellAddTargetDebuff(multishot serpent_sting_debuff=1 if_spell=serpent_sting)
Define(pet_beast_cleave_buff 118455)
	SpellInfo(pet_beast_cleave_buff duration=4)
Define(poisoned_ammo 162537)
	SpellAddBuff(poisoned_ammo poisoned_ammo_buff=1)
Define(poisoned_ammo_buff 162537)
	SpellInfo(poisoned_ammo_buff duration=3600)
Define(powershot 109259)
	SpellInfo(powershot cd=45 focus=15)
	SpellInfo(powershot buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(pre_steady_focus_buff 53224)
Define(rapid_fire 3045)
	SpellInfo(rapid_fire cd=120)
	SpellInfo(rapid_fire buff_cdr=cooldown_reduction_agility_buff)
	SpellAddBuff(rapid_fire rapid_fire_buff=1)
Define(rapid_fire_buff 3045)
	SpellInfo(rapid_fire_buff duration=15)
Define(revive_pet 982)
	SpellInfo(revive_pet focus=35)
	SpellInfo(revive_pet buff_focus_half=bestial_wrath_buff if_spell=bestial_wrath)
Define(serpent_sting 87935)
Define(serpent_sting_debuff 118253)
	SpellInfo(serpent_sting_debuff duration=15 tick=3)
Define(stampede 121818)
	SpellInfo(stampede cd=300)
	SpellInfo(stampede buff_cdr=cooldown_reduction_agility_buff)
Define(stampede_talent 15)
Define(steady_focus_buff 53220)
	SpellInfo(steady_focus_buff duration=15)
Define(steady_shot 56641)
	SpellInfo(steady_shot focus=-14)
Define(thrill_of_the_hunt 109306)
Define(thrill_of_the_hunt_buff 34720)
	SpellInfo(thrill_of_the_hunt_buff duration=15)
Define(trap_launcher 77769)
	SpellInfo(trap_launcher cd=1.5)
Define(trap_mastery 63458)
]]

	OvaleScripts:RegisterScript("HUNTER", name, desc, code, "include")
end
