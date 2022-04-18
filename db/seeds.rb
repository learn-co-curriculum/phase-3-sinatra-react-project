puts "🌱 Seeding users..."

20.times do
    User.create(
        username: Faker::Twitter.screen_name
    )
end

puts "🌱 Seeding games..."

40.times do 
    #need these two out of the create because both mins require them
    avg_play_time = rand(5..90)
    max_players = rand(2..20)
    Game.create(
        title: Faker::Movie.title,
        rating: rand(0.0..10.0),
        avg_play_time: avg_play_time,
        min_play_time: rand(avg_play_time),
        max_players: max_players,
        min_players: rand(max_players),
        play_style: Faker::Company.industry #industries becuase Ruby doesn't like 2 things named Game, so not quite right but temp stand-in
    )
end

puts "🌱 Seeding game relationships..."

80.times do
    GameRelationship.create(
        game: Game.all.sample,
        user: User.all.sample,
        played?: [true, false].sample,
        owned?: [true, false].sample,
        liked?: [true, false].sample,
    )
end

puts "✅ Done seeding!"
