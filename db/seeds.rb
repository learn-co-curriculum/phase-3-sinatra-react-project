# require 'faker'
puts "🌱 Seeding messages..."

#chatroom data. title of chatroom will be a funny name
5.times do 
    Chatroom.create(
        title: Faker::FunnyName.title, 
        # timestamp: Faker::Date.timestamp
    )
end

#message data. messages will be a slack emoji for some reason
20.times do
    Message.create(
        content: Faker::Lorem.sentence(word_count: 3)
        # message: Faker::SlackEmoji.message, 
        # timestamp: Faker::Date.timestamp
    )
end

#user data. passwords will be the name of a tea. teacher/student boolean values will be randomly true/fasle 
10.times do 
    User.create(
        first_name: Faker::Name.name, 
        last_name: Faker::Name.name, 
        user_role: %w[student teacher].sample,
        password: "password",
        # profile_pic: Faker::LoremFlickr.unique.image
    )
end

puts "✅ Done seeding!"
