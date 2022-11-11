puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    user = User.create(
        fullname: Faker::Name.name,
        username: Faker::Name.first_name,
        email: Faker::Internet.email,
        genre: Faker::Music.genre,
    )

    review = Review.create(
        user_review: Faker::Lorem.sentence
    )

    Song.create(
        title: Faker::Music.album,
        artist_name: Faker::Name.first_name,
        image: 'https://img.freepik.com/premium-vector/cute-fox-cartoon_160606-227.jpg?w=2000',
        url: Faker::Music.genre,
        user_id: user.id,
        review_id: review.id
    )
end

puts "✅ Done seeding!"
