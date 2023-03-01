puts "🌱 Seeding spices..."

# Create 20 sample users
20.times do
    User.create!(
      name: Faker::Name.name,
      image_url: Faker::Avatar.image
    )
  end

# Create 20 sample todos
20.times do
    Todo.create!(
        user_id: rand(1..20),
      title: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.paragraph(sentence_count: 3),
      category: Faker::Lorem.word,
      priority: %w[high medium low].sample
    )
end



puts "✅ Done seeding!"
