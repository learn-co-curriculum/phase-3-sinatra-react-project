
require 'faker'
# Seed your database here
puts 'destroying old data'
User.destroy_all
Message.destroy_all


10.times do 
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    avatar: Faker::LoremPixel.image
  )
  puts "Created user: #{user.id}, #{user.first_name}, #{user.last_name}"
end

10.times do 
  message = Message.create(
    message_id: Faker::Number.unique.number(digits: 1),
    user_id: Faker::Number.unique.number(digits: 1),
    from_number: Faker::PhoneNumber.phone_number,
    to_number: Faker::PhoneNumber.phone_number,
    message_text: Faker::Lorem.sentence
  )
  puts "Created message: #{message.message_id}, #{message.message_text}"
end

puts "✅ Done seeding!"
