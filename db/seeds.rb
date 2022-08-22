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
CharFeat.reset_pk_sequence
KlassSpell.reset_pk_sequence
Character.reset_pk_sequence
Klass.reset_pk_sequence
Feat.reset_pk_sequence
Spell.reset_pk_sequence
Race.reset_pk_sequence
Player.reset_pk_sequence

Faker::UniqueGenerator.clear

puts "🌱 Seeding players..."

Player.create(username: "Alie")
Player.create(username: "Andrea")
Player.create(username: "Kelsey")

puts "🌱 Seeding classes..."

response = RestClient.get "https://www.dnd5eapi.co/api/classes"
klasses = JSON.parse(response)
# iterate over each class
klasses["results"].each do |klass|
  class_response = RestClient.get "https://www.dnd5eapi.co#{klass["url"]}"
  new_class = JSON.parse(class_response)
  Klass.create(
    name: new_class["name"],
    hit_die: new_class["hit_die"],
    proficiencies: new_class["proficiencies"][0],
    proficiency_choices: new_class["proficiency_choices"][0],
    saving_throws: new_class["saving_throws"][0],
    klass_levels: new_class["class_levels"]
  )
end

puts "🌱 Seeding races..."

response = RestClient.get "https://www.dnd5eapi.co/api/races"
races = JSON.parse(response)
# iterate over each race
races["results"].each do |race|
    # binding.pry
  race_response = RestClient.get "https://www.dnd5eapi.co#{race["url"]}"
  new_race = JSON.parse(race_response)
  Race.create(
    name: new_race["name"],
    speed: new_race["speed"],
    starting_proficiencies: new_race["starting_proficiencies"][0],
    # proficiency_choices: new_race["proficiency_choices"][0],
    ability_bonuses: new_race["ability_bonuses"][0],
    languages: new_race["languages"][0],
    size: new_race["size"],
    traits: new_race["traits"][0]
)
end

puts "🌱 Seeding spells..."

response = RestClient.get "https://www.dnd5eapi.co/api/spells"
spells = JSON.parse(response)
# iterate over each spell
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
puts "🌱 Seeding feats..."

# 20.times {Feat.create name: Faker::Game.unique.platform}
file = File.read('./feats.json')
feats = JSON.parse(file)

feats.each do |feat|
  Feat.create(
    name: feat["Feat"],
    description: feat["Description"],
    prerequisites: feat["Prerequisite"]
  )
end

puts "🌱 Seeding characters..."

Player.all.size.times do |i|
  4.times {Character.create player_id: i+1, name: Faker::Movies::LordOfTheRings.unique.character, level: rand(1..8), klass_id: Klass.all.sample.id, race_id: Race.all.sample.id, str: rand(8..18), dex: rand(8..18), con: rand(8..18), int: rand(8..18), wis: rand(8..18), cha: rand(8..18)}

end

puts "generating join tables..."
klasses_with_spells = ['bard', 'cleric', 'druid', 'paladin', 'ranger', 'sorcerer', 'warlock', 'wizard']

klasses_with_spells.each { |k| 
  response = RestClient.get "https://www.dnd5eapi.co/api/classes/#{k}/spells"
  spells = JSON.parse(response)
  # iterate over each spell
  spells["results"].each do |spell|
  KlassSpell.create klass_id: Klass.find_by(name: k.capitalize()).id, spell_id: Spell.find_by(name: spell['name']).id
  end
    # spells = []
    # 5.times {spells << (rand(0..(Spell.all.size - 1)))}
    # spells = spells.uniq

    # spells.each {|s| KlassSpell.create klass_id: k+1, spell_id: s + 1}
}

Character.all.size.times { |c| 
    feats = []
    2.times {feats << (rand(0..(Feat.all.size - 1)))}
    feats = feats.uniq

    feats.each {|f| CharFeat.create character_id: c+1, feat_id: f + 1}
}

puts "✅ Done seeding!"
