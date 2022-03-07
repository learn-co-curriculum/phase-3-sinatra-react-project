puts "🌱 Seeding spices..."

Word.delete_all
Suggestion.delete_all

50.times do
    user = User.create(
        username: Faker::Creature::Horse.name,
        difficulty: 'medium',
        highscore: 0,
        ip_address: Faker::Internet.public_ip_v4_address
    )

    3.times do
        suggestion = Suggestion.create(
            suggested_word: Faker::ProgrammingLanguage.name,
            approved: false,
            user_id: user.id
        )
    end

    word = Word.create(
        game_word: Faker::ProgrammingLanguage.name,
        is_used: false
    )
end


puts "✅ Done seeding!"
