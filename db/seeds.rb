puts "🌱 Seeding spices..."

# destroy all previous data and reset ids to 0
Log.destroy_all
Log.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence

# Seed your database here
10.times do
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: Faker::Internet.password
    )
end

50.times do
    Log.create(
        user_id: User.ids.sample,
        title: Faker::Book.title,
        author: Faker::Book.author,
        star_rating: rand(1..5),
        comment: Faker::Lorem.sentence,
        image_url: Faker::LoremFlickr.image
    )
end

puts "✅ Done seeding!"
