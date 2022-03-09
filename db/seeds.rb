puts "🌱 Seeding spices..."

User.delete_all
Word.delete_all
Suggestion.delete_all
Score.delete_all

10.times do
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

    10.times do
        word = Word.create(
            game_word: Faker::ProgrammingLanguage.name,
            is_used: false,
            date_used: nil
        )
    end
    
    1.times do
        score = Score.create(
            user_id: user.id,
            word_id: 1,
            session_score: rand(20..50),
            guesses: rand(0..1),
            completed: false
        )
    end

end




puts "✅ Done seeding!"
