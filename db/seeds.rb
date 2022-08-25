require 'json'

puts "rerolling characters after a TPK...."
CharFeat.destroy_all
KlassSpell.destroy_all
Character.destroy_all
Klass.destroy_all
Feat.destroy_all
Spell.destroy_all
Race.destroy_all
Player.destroy_all
Skill.destroy_all
CharSkill.destroy_all
Skill.reset_pk_sequence
CharSkill.reset_pk_sequence
CharFeat.reset_pk_sequence
KlassSpell.reset_pk_sequence
Character.reset_pk_sequence
Klass.reset_pk_sequence
Feat.reset_pk_sequence
Spell.reset_pk_sequence
Race.reset_pk_sequence
Player.reset_pk_sequence

Faker::UniqueGenerator.clear

puts "🎲 Seeding players..."

Player.create(username: "Alie")
Player.create(username: "Andrea")
Player.create(username: "Kelsey")

puts "⚔️ Seeding classes..."

response = RestClient.get "https://www.dnd5eapi.co/api/classes"
klasses = JSON.parse(response)
klasses["results"].each do |klass|
  class_response = RestClient.get "https://www.dnd5eapi.co#{klass["url"]}"
  new_class = JSON.parse(class_response)
  Klass.create(
    name: new_class["name"],
    hit_die: new_class["hit_die"],
    proficiency_choices: new_class["proficiency_choices"][0]["desc"],
    klass_levels: new_class["class_levels"]
  )
end

puts "🧝🏼‍♀️ Seeding races..."

response = RestClient.get "https://www.dnd5eapi.co/api/races"
races = JSON.parse(response)
races["results"].each do |race|
  race_response = RestClient.get "https://www.dnd5eapi.co#{race["url"]}"
  new_race = JSON.parse(race_response)
  Race.create(
    name: new_race["name"],
    speed: new_race["speed"],
    ability_bonuses: new_race["ability_bonuses"].map { |a| {a["ability_score"]["index"] => a["bonus"] }},
    languages: new_race["languages"].map {|l| l["name"]},
    size: new_race["size"],
    traits: new_race["traits"].map {|t| t["name"]}
)
end

puts "🧙🏻‍♂️ Seeding spells..."

response = RestClient.get "https://www.dnd5eapi.co/api/spells"
spells = JSON.parse(response)
spells["results"].each do |spell|
  spell_response = RestClient.get "https://www.dnd5eapi.co#{spell["url"]}"
  new_spell = JSON.parse(spell_response)
  Spell.create(
    name: new_spell["name"],
    level: new_spell["level"],
    description: new_spell["desc"][0],
    casting_time: new_spell["casting_time"],
    duration: new_spell["duration"],
    concentration: new_spell["concentration"],
    ritual: new_spell["ritual"],
    range: new_spell["range"]
  )
end
puts "🛡️ Seeding feats..."

file = File.read('./feats.json')
feats = JSON.parse(file)

feats.each do |feat|
  Feat.create(
    name: feat["Feat"],
    description: feat["Description"],
    prerequisites: feat["Prerequisite"]
  )
end

klasses_with_spells = ['bard', 'cleric', 'druid', 'paladin', 'ranger', 'sorcerer', 'warlock', 'wizard']

puts "📜 Seeding characters..."

Player.all.size.times do |i|
  4.times {Character.create player_id: i+1, name: Faker::Movies::LordOfTheRings.unique.character, level: rand(1..8), klass_id: Klass.all.sample.id, race_id: Race.all.sample.id, str: rand(8..18), dex: rand(8..18), con: rand(8..18), int: rand(8..18), wis: rand(8..18), cha: rand(8..18)};
  
end
Player.all.each {|p| p.characters.map{|c| c.update(current_hp: c.calculate_hp, hp: c.calculate_hp, is_spellcaster: c.is_spellcaster?)}}


puts "seeding skills...."

skills = [{name: 'Acrobatics', stat: 'dex'}, {name: 'Animal Handling', stat: 'wis'}, {name: 'Arcana', stat: 'int'}, {name: 'Athletics', stat: 'str'}, {name: 'Deception', stat: 'cha'}, {name: 'History', stat: 'int'}, {name: 'Insight', stat: 'wis'}, {name: 'Intimidation', stat: 'cha'}, {name: 'Investigation', stat: 'int'}, {name: 'Medicine', stat: 'wis'}, {name: 'Nature', stat: 'int'}, {name: 'Perception', stat: 'wis'}, {name: 'Performance', stat: 'cha'}, {name: 'Persuasion', stat: 'cha'}, {name: 'Religion', stat: 'int'}, {name: 'Sleight of Hand', stat: 'dex'}, {name: 'Stealth', stat: 'dex'}, {name: 'Survival', stat: 'wis'}, {name: 'Str Save', stat: 'str'}, {name: 'Dex Save', stat: 'dex'}, {name: 'Con Save', stat: 'con'}, {name: 'Int Save', stat: 'int'}, {name: 'Wis Save', stat: 'wis'}, {name: 'Cha Save', stat: 'cha'}]

skills.each {|skill| Skill.create(name: skill[:name], stat: skill[:stat])}

puts "🎲 generating join tables..."

klass_skills = [[1,19], [1,21], [2,20], [2,24], [3,23], [3,24], [4,22], [4,23], [5,19], [5,21], [6,19], [6,20], [7,23], [7,24], [8,19], [8,20], [9,20], [9, 22], [10,21], [10,24], [11,23], [11,24], [12,22], [12,23]]
race_skills = [[3, 12], [6, 8]]

klass_skills.each {|ks| CharSkill.create(klass_id: ks[0], skill_id: ks[1])}
race_skills.each {|rs| CharSkill.create(race_id: rs[0], skill_id: rs[1])}

klasses_with_spells.each { |k| 
  response = RestClient.get "https://www.dnd5eapi.co/api/classes/#{k}/spells"
  spells = JSON.parse(response)
  spells["results"].each do |spell|
  KlassSpell.create klass_id: Klass.find_by(name: k.capitalize()).id, spell_id: Spell.find_by(name: spell['name']).id
  end
}

puts "💎 Adventure Awaits!"
