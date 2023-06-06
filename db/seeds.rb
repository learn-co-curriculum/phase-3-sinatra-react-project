puts "🌱 Seeding spices..."

# Seed your database here
10.times do 
    User.create(
    user_id: Faker::User.user_id,
    first_name: Faker::User.first_name,
    last_name: Faker::User.last_name,
    avatar: Faker::User.avatar,
)
end

puts "✅ Done seeding!"



