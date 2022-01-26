require 'faker'

puts "🌱 Seeding spices..."

# Seed your database here

 100.times do 
    Company.create(
        company_name: Faker::Company.name,
    )
end

100.times do 
    JobTitle.create(
        job_title: Faker::Job.title
    )

puts "✅ Done seeding!"
