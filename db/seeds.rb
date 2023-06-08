puts "🌱 Seeding spices..."

# Seed your database here

5.times do
    
    user = User.create(
        email: Faker::Internet.email,
        speciality: Faker::Lorem.word,
        avatar_url: Faker::LoremFlickr.image,
        experience: Faker::Lorem.paragraph,
        interests: Faker::Lorem.sentence(5),
        hobies: Faker::Lorem.sentence(5),
        date_of_birth: Faker::Date.birthday(min_age: 15, max_age: 65),
        locale: Faker::Address.country,
        address: Faker::Address.full_address,
        education: Faker::Educator.degree,
        name: Faker::Name.name
    )

    # create between 1 and 5 projects with random data for each user
    rand(1..5).times do
        project = Project.create(
        title: Faker::Lorem.sentence(5),
        description: Faker::Lorem.paragraph,
        image_url: Faker::LoremFlickr.image,
        user_id: user.id
    )
    end

    # create between 1 and 10 skills for each user
    rand(1..10).times do
        skill = Skill.create(
        skill: Faker::Job.key_skill,
        user_id: user.id
    )
    end

    credential = Credential.create(
        password: Faker::Internet.password,
        username: Faker::Internet.username(specifier: 5),
        email: user.email,
        user_id: user.id
    )
end


puts "✅ Done seeding!"
