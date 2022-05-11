require 'faker'


puts "🌱 Seeding users..."
20.times do 
random_photo = Faker::LoremFlickr.image(size: "250x250", search_terms: ['person', 'computer'])
# random_photo = Faker::LoremFlickr.unique.image(size: "250x250", search_terms: ['person', 'computer'])

users = User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: "password",
    profile_picture: random_photo,
    bio: Faker::Quote.most_interesting_man_in_the_world,
    gender: Faker::Gender.type,
    interests: Faker::Hipster.words(number: 4).join(", ").to_s,
)
end

puts "🌱 Seeding likes..."

Like.create(liked_user_id: 1, user_id: 2)
Like.create(liked_user_id: 1, user_id: 13)
Like.create(liked_user_id: 1, user_id: 8)
Like.create(liked_user_id: 8, user_id: 1)
Like.create(liked_user_id: 12, user_id: 2)
Like.create(liked_user_id: 9, user_id: 1)
Like.create(liked_user_id: 1, user_id: 9)
Like.create(liked_user_id: 10, user_id: 1)
Like.create(liked_user_id: 1, user_id: 5)

puts "🌱 Seeding matches..."
# Match.create(likes_id_1: nil, likes_id_2: nil)
# Match.create(likes_id_1: nil, likes_id_2: nil)
# Match.create(likes_id_1: nil, likes_id_2: nil)
# Match.create(likes_id_1: nil, likes_id_2: nil)
# Match.create(likes_id_1: nil, likes_id_2: nil)
# Match.create(likes_id_1: nil, likes_id_2: nil)

# Seed your database here

puts "✅ Done seeding!"
