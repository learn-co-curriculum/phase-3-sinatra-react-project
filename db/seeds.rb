<<<<<<< HEAD
puts "🌱 Seeding spices..."
=======
# require 'faker'
puts "🌱 Seeding messages..."
>>>>>>> 6d7b8ff (added table updates and seeds)

#chatroom data. title of a chatroom will be a spice name
5.times do 
    Chatroom.create(
<<<<<<< HEAD
        title: Faker::Food.spice, 
        timestamp: Faker::Date.between(from: '2022-11-15', to: "2021-11-15")
=======
        title: Faker::FunnyName.title, 
        # timestamp: Faker::Date.timestamp
>>>>>>> 6d7b8ff (added table updates and seeds)
    )
end

#message data. messages will be a slack emoji for some reason
20.times do
    Message.create(
<<<<<<< HEAD
        message: Faker::SlackEmoji.emoji, 
        timestamp: Faker::Date.between(from: '2022-11-15', to: "2021-11-15"),
        user_id: rand(1..10),
        chatroom_id: rand(1..5)
=======
        content: Faker::Lorem.sentence(word_count: 3)
        # message: Faker::SlackEmoji.message, 
        # timestamp: Faker::Date.timestamp
>>>>>>> 6d7b8ff (added table updates and seeds)
    )
end

#user data. passwords will be the name of a tea. teacher/student boolean values will be randomly true/fasle 
10.times do 
    User.create(
<<<<<<< HEAD
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        isTeacher?: rand(2) == 1 ? true : false,
        password: Faker::Tea.variety 
=======
        first_name: Faker::Name.name, 
        last_name: Faker::Name.name, 
        user_role: %w[student teacher].sample,
        password: "password",
        # profile_pic: Faker::LoremFlickr.unique.image
>>>>>>> 6d7b8ff (added table updates and seeds)
    )
end
puts "✅ Done seeding!"
