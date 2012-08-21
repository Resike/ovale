Ovale.defaut["DRUID"] = [[Define(berserking 26297)
  SpellInfo(berserking duration=10 cd=180 )
  SpellAddBuff(berserking berserking=1)
Define(celestial_alignment 112071)
  SpellInfo(celestial_alignment duration=15 cd=180 )
  SpellAddBuff(celestial_alignment celestial_alignment=1)
Define(chosen_of_elune 122114)
Define(dream_of_cenarius_damage 108381)
  SpellInfo(dream_of_cenarius_damage duration=30 )
  SpellAddBuff(dream_of_cenarius_damage dream_of_cenarius_damage=1)
Define(healing_touch 5185)
Define(incarnation 106731)
  SpellInfo(incarnation duration=30 cd=180 )
Define(lunar_eclipse 48518)
  SpellAddBuff(lunar_eclipse lunar_eclipse=1)
Define(mark_of_the_wild 1126)
  SpellInfo(mark_of_the_wild duration=3600 )
  SpellAddBuff(mark_of_the_wild mark_of_the_wild=1)
Define(moonfire 8921)
  SpellInfo(moonfire duration=14 )
  SpellAddBuff(moonfire moonfire=1)
Define(moonkin_form 24858)
  SpellAddBuff(moonkin_form moonkin_form=1)
Define(natures_grace 16886)
  SpellInfo(natures_grace duration=15 )
  SpellAddBuff(natures_grace natures_grace=1)
Define(natures_swiftness 132158)
  SpellInfo(natures_swiftness cd=60 )
  SpellAddBuff(natures_swiftness natures_swiftness=1)
Define(natures_vigil 124974)
  SpellInfo(natures_vigil duration=30 cd=180 )
  SpellAddBuff(natures_vigil natures_vigil=1)
Define(shooting_stars 93399)
Define(solar_eclipse 48517)
  SpellAddBuff(solar_eclipse solar_eclipse=1)
Define(starfall 48505)
  SpellInfo(starfall duration=10 cd=90 )
  SpellAddBuff(starfall starfall=1)
Define(starfire 2912)
Define(starsurge 78674)
  SpellInfo(starsurge cd=15 )
Define(sunfire 93402)
  SpellInfo(sunfire duration=14 )
  SpellAddBuff(sunfire sunfire=1)
Define(treants 106737)
  SpellInfo(treants duration=15 cd=60 )
Define(wild_mushroom 88747)
  SpellInfo(wild_mushroom duration=300 )
Define(wild_mushroom_detonate 78777)
Define(wrath 5176)
Define(dream_of_cenarius 17)
Define(force_of_nature 12)
Define(incarnation 11)
Define(natures_swiftness 4)
Define(natures_vigil 18)
AddIcon mastery=1 help=main
{
	if TalentPoints(force_of_nature) Spell(treants)
	if not BuffPresent(dream_of_cenarius_damage) and TalentPoints(dream_of_cenarius) Spell(healing_touch)
	if BuffPresent(lunar_eclipse) and {target.DebuffRemains(moonfire) <{BuffRemains(natures_grace) -2 +2 *ArmorSetParts(T14 more 4) } } Spell(moonfire)
	if BuffPresent(solar_eclipse) and not BuffPresent(celestial_alignment) and {target.DebuffRemains(sunfire) <{BuffRemains(natures_grace) -2 +2 *ArmorSetParts(T14 more 4) } } Spell(sunfire)
	if not target.DebuffPresent(moonfire) and not BuffPresent(celestial_alignment) and {BuffPresent(dream_of_cenarius_damage) or not TalentPoints(dream_of_cenarius) } Spell(moonfire)
	if not target.DebuffPresent(sunfire) and not BuffPresent(celestial_alignment) and {BuffPresent(dream_of_cenarius_damage) or not TalentPoints(dream_of_cenarius) } Spell(sunfire)
	Spell(starsurge)
	if BuffPresent(celestial_alignment) and CastTime(starfire) <BuffRemains(celestial_alignment) Spell(starfire)
	if BuffPresent(celestial_alignment) and CastTime(wrath) <BuffRemains(celestial_alignment) Spell(wrath)
	if EclipseDir() ==1 or {EclipseDir() ==0 and Eclipse() >0 } Spell(starfire)
	if EclipseDir() ==-1 or {EclipseDir() ==0 and Eclipse() <=0 } Spell(wrath)
	if not target.DebuffPresent(sunfire) Spell(moonfire)
	if not target.DebuffPresent(moonfire) Spell(sunfire)
	if BuffStacks(wild_mushroom) <5 Spell(wild_mushroom)
	if BuffPresent(shooting_stars) Spell(starsurge)
	if BuffPresent(lunar_eclipse) Spell(moonfire)
	Spell(sunfire)
}
AddIcon mastery=1 help=offgcd
{
	if BuffStacks(wild_mushroom) >0 and BuffPresent(solar_eclipse) Spell(wild_mushroom_detonate)
	if TalentPoints(dream_of_cenarius) and TalentPoints(natures_swiftness) Spell(natures_swiftness)
}
AddIcon mastery=1 help=cd
{
	if not BuffPresent(starfall) Spell(starfall)
	Spell(berserking)
	if TalentPoints(incarnation) and {BuffPresent(lunar_eclipse) or BuffPresent(solar_eclipse) } Spell(incarnation)
	if {{EclipseDir() ==-1 and Eclipse() <=0 } or {EclipseDir() ==1 and Eclipse() >=0 } } and {BuffPresent(chosen_of_elune) or not TalentPoints(incarnation) } Spell(celestial_alignment)
	if {{TalentPoints(incarnation) and BuffPresent(chosen_of_elune) } or {not TalentPoints(incarnation) and BuffPresent(celestial_alignment) } } and TalentPoints(natures_vigil) Spell(natures_vigil)
}
]]