
require 'faker'
# Seed your database here
        10.times do 
           user =  User .create(
            user_id: Faker:: User .user_id,
            message_id: Faker:: User .message_id,
            first_name: Faker:: User .first_name,
            last_name: Faker:: User .last_name,
            avatar: Faker:: User .avatar,
        )
        puts "Created user: #{user.user_id}, #{user.first_name}"
        end


    10.times do 
        Message.create(
            message_id: Faker::Message.message_id,
            from_number: Faker::Message.from_number,
            to_number: Faker::Message.to_number,
            message_text: Faker::Message.message_text,
    )
    end


puts "✅ Done seeding!"





