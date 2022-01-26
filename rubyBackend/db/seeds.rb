

puts "🌱 Seeding spices..."

# Seed your database here

 100.times do 
    Job.create(
        company_name: Faker::Company.name,job_title: Faker::Job.title,application_date: Faker::Date.between(from: '2022-01-23', to: '2022-07-23'), follow_up_date: Faker::Date.forward(days: 14)
    )
end

100.times do 
    User.create(
        name: Faker::Name.name
    )
end
puts "✅ Done seeding!"

