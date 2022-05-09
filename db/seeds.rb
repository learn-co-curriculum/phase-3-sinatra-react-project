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
lover = Lover.create(
    username: Faker::Name.name,
    profile_picture: Faker::LoremFlickr.image(size: "50x60", search_terms: ['person', 'computer']),
    bio: Faker::Quote.most_interesting_man_in_the_world,
    gender: Faker::Gender.type,
    interests: Faker::Hipster.words(number: 4),
    birthdate: Faker::Date.between(from: '1940-09-23', to: '2004-09-25'),
    wants_a_date: Faker::Boolean.boolean
)
end

puts "🌱 Seeding matches..."
10.times do 
match = Match.create(
    comment: Faker::Hipster.paragraph(sentence_count: 2),
    user_id: 1,
    lover_id: rand(1..20)
)
end



# Seed your database here

puts "✅ Done seeding!"
