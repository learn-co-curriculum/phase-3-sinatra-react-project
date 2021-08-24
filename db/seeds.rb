puts "🌱 Starting games..."

20.times do

    Game.create(

        name: Faker::Game.title,
        release_date: rand(1980..2021),
        price: rand(10..60),
        company_id: rand(1..5),
        genre: Faker::Game.genre,
        image: Faker::Avatar.image
    
    )

end

puts "Finished games, starting companies..."

5.times do

    Company.create(

        name: Faker::Ancient.god

    )

end

puts "✅ Done seeding!"
