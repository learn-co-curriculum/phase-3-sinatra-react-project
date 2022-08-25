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

Player.create(username: "Alie", image: "../avatars/Alie.jpg")
Player.create(username: "Andrea", image: "../avatars/Andrea.jpg")
Player.create(username: "Kelsey", image: "../avatars/Kelsey.jpg")

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

# Player.all.size.times do |i|
#   4.times {Character.create player_id: i+1, name: Faker::Movies::LordOfTheRings.unique.character, level: rand(1..8), klass_id: Klass.all.sample.id, race_id: Race.all.sample.id, str: rand(8..18), dex: rand(8..18), con: rand(8..18), int: rand(8..18), wis: rand(8..18), cha: rand(8..18)};
  
# end
# Player.all.each {|p| p.characters.map{|c| c.update(current_hp: c.calculate_hp, hp: c.calculate_hp, is_spellcaster: c.is_spellcaster?)}}

Frodo = Character.create(name: "Frodo Baggins",player_id: 1,level: 6,klass_id: 11,race_id: 7,str: 11,dex: 15,con: 14,int: 18,wis: 12,cha: 16, image: "../avatars/frodo.jpg")
Sam = Character.create(name: "Samwise Gamgee",player_id: 1,level: 8,klass_id: 3,race_id: 7,str: 12,dex: 8,con: 9,int: 13,wis: 17,cha: 12, image: "../avatars/sam.jpg")
Pippin = Character.create(name: "Peregrin Took",player_id: 2,level: 7,klass_id: 2,race_id: 7,str: 13,dex: 20,con: 13,int: 13,wis: 7,cha: 16, image: "../avatars/pippin.jpg")
Merry = Character.create(name: "Meriadoc Brandybuck",player_id: 2,level: 8,klass_id: 9,race_id: 7,str: 8,dex: 17,con: 14,int: 16,wis: 13,cha: 14, image: "../avatars/merry.jpg")
Aragorn = Character.create(name: "Aragorn",player_id: 3,level: 18,klass_id: 8,race_id: 8,str: 18,dex: 16,con: 17,int: 13,wis: 18,cha: 12, image: "../avatars/aragorn.jpg")
Boromir = Character.create(name: "Boromir",player_id: 2,level: 10,klass_id: 7,race_id: 8,str: 20,dex: 12,con: 16,int: 12,wis: 11,cha: 16, image: "../avatars/boromir.jpg")
Legolas = Character.create(name: "Legolas",player_id: 3,level: 13,klass_id: 5,race_id: 3,str: 12,dex: 20,con: 15,int: 9,wis: 17,cha: 6, image: "../avatars/legolas.jpg")
Gimli = Character.create(name: "Gimli",player_id: 3,level: 12,klass_id: 1,race_id: 2,str: 20,dex: 8,con: 15,int: 13,wis: 18,cha: 13, image: "../avatars/gimli.jpg")
Gandalf = Character.create(name: "Gandalf the White",player_id: 1,level: 20,klass_id: 12,race_id: 9,str: 20,dex: 20,con: 20,int: 20,wis: 20,cha: 20, image: "../avatars/gandalf.jpg")

fellowship = [Frodo, Sam, Pippin, Merry, Aragorn, Boromir, Legolas, Gimli, Gandalf]

fellowship.map {|f| f.update(hp: f.calculate_hp, current_hp: f.calculate_hp, is_spellcaster: f.is_spellcaster?)}


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

# Character.all.each {|c| c.set_skills}

Frodo_skills = [4,7,16,17]
Sam_skills = [6,4,15,18]
Pippin_skills = [16,9,17]
Merry_skills = [14,4,18]
Aragorn_skills = [1,4,6,7,10,11,12,17,18]
Boromir_skills = [6,8,12,14,18]
Legolas_skills = [2,4,1,11,12,18]
Gimli_skills = [6,7,8,9,10]
Gandalf_skills = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,12,20,21,23]

Frodo_skills.map {|s| CharSkill.create(character_id: 1, skill_id: s)}
Sam_skills.map {|s| CharSkill.create(character_id: 2, skill_id: s)}
Pippin_skills.map {|s| CharSkill.create(character_id: 3, skill_id: s)}
Merry_skills.map {|s| CharSkill.create(character_id: 4, skill_id: s)}
Aragorn_skills.map {|s| CharSkill.create(character_id: 5, skill_id: s)}
Boromir_skills.map {|s| CharSkill.create(character_id: 6, skill_id: s)}
Legolas_skills.map {|s| CharSkill.create(character_id: 7, skill_id: s)}
Gimli_skills.map {|s| CharSkill.create(character_id: 8, skill_id: s)}
Gandalf_skills.map {|s| CharSkill.create(character_id: 9, skill_id: s)}

puts "💎 Adventure Awaits!"
