require 'faker'

puts "🌱 Seeding user..."
User.create(
    username: "Mark", 
    profile_picture: "https://images.squarespace-cdn.com/content/v1/59279223ebbd1ad67402df46/1496393079682-0X90WET2RLEL67WHLXUU/2.jpg?format=500w", 
    bio: "Just a smalltown girl living in a lonely world", 
    gender: "Male", 
    interests: "Anchovies, Toxic Waste, Slamming my fingers in car doors", 
    birthdate: Date.new(1992, 8, 20)
)

puts "🌱 Seeding lovers..."
20.times do 
random_photo = Faker::LoremFlickr.image(size: "250x250", search_terms: ['person', 'computer'])
# random_photo = Faker::LoremFlickr.unique.image(size: "250x250", search_terms: ['person', 'computer'])

lover = Lover.create(
    username: Faker::Name.name,
    profile_picture: random_photo,
    bio: Faker::Quote.most_interesting_man_in_the_world,
    gender: Faker::Gender.type,
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
    birthdate: Faker::Date.between(from: '1940-09-23', to: '2004-09-25'),
    wants_a_date: Faker::Boolean.boolean
)
end

puts "🌱 Seeding matches..."

Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 1)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 13)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 6)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 8)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 2)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 12)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 9)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 10)
Match.create(comment: Faker::Hipster.sentence, user_id: 1, lover_id: 19)

# Seed your database here

puts "✅ Done seeding!"
