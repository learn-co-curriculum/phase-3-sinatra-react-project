
require 'faker'
# Seed your database here


10.times do 
  user = User.create(
    user_id: Faker::Number.unique.number(digits: 6),
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    avatar: Faker::LoremPixel.image
  )
  puts "Created user: #{user.user_id}, #{user.first_name}"
end

10.times do 
  message = Message.create(
    message_id: Faker::Number.unique.number(digits: 6),
    from_number: Faker::PhoneNumber.phone_number,
    to_number: Faker::PhoneNumber.phone_number,
    message_text: Faker::Lorem.sentence
  )
  puts "Created message: #{message.message_id}, #{message.message_text}"
end

puts "✅ Done seeding!"
