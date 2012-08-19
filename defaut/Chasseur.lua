Ovale.defaut["HUNTER"] = [[Define(a_murder_of_crows 131894)
  SpellInfo(a_murder_of_crows duration=30 cd=120 )
  SpellAddBuff(a_murder_of_crows a_murder_of_crows=1)
Define(aimed_shot 19434)
Define(arcane_shot 3044)
Define(aspect_of_the_fox 82661)
  SpellAddBuff(aspect_of_the_fox aspect_of_the_fox=1)
Define(aspect_of_the_hawk 13165)
  SpellAddBuff(aspect_of_the_hawk aspect_of_the_hawk=1)
Define(auto_shot 75)
  SpellAddBuff(auto_shot auto_shot=1)
Define(beast_within 34692)
Define(bestial_wrath 19574)
  SpellInfo(bestial_wrath duration=10 cd=60 )
  SpellAddBuff(bestial_wrath bestial_wrath=1)
Define(black_arrow 3674)
  SpellInfo(black_arrow duration=20 cd=30 )
  SpellAddTargetDebuff(black_arrow black_arrow=1)
Define(blood_fury 20572)
  SpellInfo(blood_fury duration=15 cd=120 )
  SpellAddBuff(blood_fury blood_fury=1)
Define(bloodlust 2825)
  SpellInfo(bloodlust duration=40 cd=300 )
  SpellAddBuff(bloodlust bloodlust=1)
Define(call_pet_1 883)
Define(chimera_shot 53209)
  SpellInfo(chimera_shot cd=9 )
Define(cobra_shot 77767)
Define(explosive_shot 53301)
  SpellInfo(explosive_shot duration=2 cd=6 )
  SpellAddTargetDebuff(explosive_shot explosive_shot=1)
Define(explosive_trap 13812)
  SpellInfo(explosive_trap duration=20 )
  SpellAddTargetDebuff(explosive_trap explosive_trap=1)
Define(fervor 82726)
  SpellInfo(fervor duration=10 focus=-50 cd=30 )
  SpellAddBuff(fervor fervor=1)
Define(focus_fire 82692)
  SpellInfo(focus_fire duration=20 )
  SpellAddBuff(focus_fire focus_fire=1)
Define(glaive_toss 117050)
  SpellInfo(glaive_toss duration=15 cd=15 )
Define(hunters_mark 1130)
  SpellInfo(hunters_mark duration=300 )
  SpellAddTargetDebuff(hunters_mark hunters_mark=1)
Define(kill_command 34026)
  SpellInfo(kill_command cd=6 )
  SpellAddBuff(kill_command kill_command=1)
Define(kill_shot 53351)
  SpellInfo(kill_shot cd=10 )
Define(master_marksman_fire 82926)
  SpellInfo(master_marksman_fire duration=10 )
  SpellAddBuff(master_marksman_fire master_marksman_fire=1)
Define(multi_shot 2643)
Define(rapid_fire 3045)
  SpellInfo(rapid_fire duration=15 cd=180 )
  SpellAddBuff(rapid_fire rapid_fire=1)
Define(readiness 23989)
  SpellInfo(readiness cd=300 )
Define(serpent_sting 1978)
  SpellAddTargetDebuff(serpent_sting serpent_sting=1)
Define(stampede 54864)
Define(steady_focus 53220)
  SpellInfo(steady_focus duration=10 )
  SpellAddBuff(steady_focus steady_focus=1)
Define(steady_shot 56641)
Define(trueshot_aura 19506)
  SpellAddBuff(trueshot_aura trueshot_aura=1)
AddIcon mastery=1 help=main
{
	Spell(aspect_of_the_hawk)
	Spell(aspect_of_the_fox)
	Spell(focus_fire)
	if not target.DebuffPresent(serpent_sting) Spell(serpent_sting)
	Spell(glaive_toss)
	if Enemies() >5 Spell(cobra_shot)
	Spell(kill_shot)
	Spell(kill_command)
	if Focus() <=37 Spell(fervor)
	if Focus() >=69 or BuffPresent(beast_within) Spell(arcane_shot)
	Spell(cobra_shot)
}
AddIcon mastery=1 help=offgcd
{
	Spell(auto_shot)
	if Focus() >60 Spell(bestial_wrath)
	Spell(stampede)
}
AddIcon mastery=1 help=aoe
{
	Spell(explosive_trap)
	Spell(multi_shot)
}
AddIcon mastery=1 help=cd
{
	Spell(blood_fury)
	if not BuffPresent(bloodlust) and not BuffPresent(beast_within) Spell(rapid_fire)
	if BuffPresent(beast_within) Spell(a_murder_of_crows)
	Spell(readiness)
}
AddIcon mastery=2 help=main
{
	Spell(aspect_of_the_hawk)
	Spell(aspect_of_the_fox)
	Spell(glaive_toss)
	if Enemies() >5 Spell(steady_shot)
	if not target.DebuffPresent(serpent_sting) and target.HealthPercent() <=90 Spell(serpent_sting)
	if target.HealthPercent() <=90 Spell(chimera_shot)
	if PreviousSpell(steady_shot) and BuffRemains(steady_focus) <3 Spell(steady_shot)
	Spell(kill_shot)
	if BuffPresent(master_marksman_fire) Spell(aimed_shot)
	if target.HealthPercent() >90 or BuffPresent(rapid_fire) or BuffPresent(bloodlust) Spell(aimed_shot)
	if {Focus() >=66 or SpellCooldown(chimera_shot) >=5 } and {target.HealthPercent() <90 and not BuffPresent(rapid_fire) and not BuffPresent(bloodlust) } Spell(arcane_shot)
	if Focus() <=20 Spell(fervor)
	Spell(steady_shot)
}
AddIcon mastery=2 help=offgcd
{
	Spell(auto_shot)
	Spell(stampede)
}
AddIcon mastery=2 help=aoe
{
	Spell(explosive_trap)
	Spell(multi_shot)
}
AddIcon mastery=2 help=cd
{
	Spell(blood_fury)
	if not BuffPresent(bloodlust) or target.DeadIn() <=30 Spell(rapid_fire)
	Spell(readiness)
	Spell(a_murder_of_crows)
}
AddIcon mastery=3 help=main
{
	Spell(aspect_of_the_hawk)
	Spell(aspect_of_the_fox)
	Spell(glaive_toss)
	if Enemies() >2 Spell(cobra_shot)
	if not target.DebuffPresent(serpent_sting) and target.DeadIn() >=10 Spell(serpent_sting)
	if {target.DebuffRemains(explosive_shot) <2.0 } Spell(explosive_shot)
	Spell(kill_shot)
	if target.DeadIn() >=8 Spell(black_arrow)
	if Focus() >=67 Spell(arcane_shot)
	if Focus() <=20 Spell(fervor)
	Spell(cobra_shot)
}
AddIcon mastery=3 help=offgcd
{
	Spell(auto_shot)
	Spell(stampede)
}
AddIcon mastery=3 help=aoe
{
	Spell(explosive_trap)
	Spell(multi_shot)
}
AddIcon mastery=3 help=cd
{
	Spell(blood_fury)
	Spell(a_murder_of_crows)
	Spell(rapid_fire)
	Spell(readiness)
}
]]