require 'faker'
puts "🌱 Seeding spices..."

#chatroom data. title of chatroom will be a funny name
5.times do 
    Chatroom.create(
        title: Faker::FunnyName.title, 
        timestamp: Faker::Date.timestamp
    )
end

#message data. messages will be a slack emoji for some reason
20.times. do
    Meassage.create(
        message: Faker::SlackEmoji.message, 
        timestamp: Faker::Date.timestamp
    )
end

#user data. passwords will be the name of a tea
10.times do 
    User.create(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        teacher: rand(2) == 1 ? true : false
        student: rand(2) == 1 ? true : false
        password: Faker::Tea.password
    )
end

puts "✅ Done seeding!"
