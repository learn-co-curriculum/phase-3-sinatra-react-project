

# Seed your database here
        10.times do 
             User .create(
            user_id: Faker:: User .user_id,
            first_name: Faker:: User .first_name,
            last_name: Faker:: User .last_name,
            avatar: Faker:: User .avatar,
        )
        end

    10.times do 
        CreateMessages.create(
            message_id: Faker::CreateMessages.message_id,
            from_number: Faker::CreateMessages.from_number,
            to_number: Faker::CreateMessages.to_number,
            message_text: Faker::CreateMessages.message_text,
    )
    end


puts "✅ Done seeding!"





