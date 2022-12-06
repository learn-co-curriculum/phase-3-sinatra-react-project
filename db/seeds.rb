puts "🌱 Seeding spices..."

first_character = Character.create(name: 'Carl', alignment: 'villain', catchphrase:'I will burn the world to the ground!', personality: 'hot-tempered', strength: 'problem solving', weakness: 'water', background:'Hero parent who deserted him.')
second_character = Character.create(name: 'Blaze', alignment: 'hero', catchphrase:'I enjoy eating pizza', personality: 'mild-mannered', strength: 'people person', weakness: 'indecisive', background:'The son of Carl')
third_character = Character.create(name: 'Sir Dominoes', alignment: 'hero', catchphrase:'Did someone order takeout?!', personality: 'energetic', strength: 'provider', weakness: 'people with no money', background:'Growing up on the dark plains of Pizza Hut')

first_arena = Arena.create(name: 'Pizza Dome', size: 'small', climate: 'brick oven hot', terrain:'deep-deep-dish')
second_arena = Arena.create(name: 'Butterfly of Death', size: 'medium', climate: 'luke warm', terrain:'woody')
third_arena = Arena.create(name: 'Thunder Rock', size: 'large', climate: 'artic', terrain:'molten lava')

Event.create(character: first_character, arena: second_arena, name: 'Tick-Tack-Toe Extreme', date: 'Tuesday' , type_of_event:'game')
Event.create(character: second_character, arena: third_arena, name: 'Big Glamour', date: 'Thursday' , type_of_event:'beauty competition')
Event.create(character: third_character, arena: first_arena, name: 'The 3,14th Annual Cookout', date: 'March 14th' , type_of_event:'potluck')

puts "✅ Done seeding!"
