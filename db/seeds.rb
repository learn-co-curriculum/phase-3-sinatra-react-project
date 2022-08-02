Project.destroy_all
Task.destroy_all
Business.destroy_all
Request.destroy_all
Team.destroy_all
Member.destroy_all


puts "🌱 Seeding spices..."

puts "Creating Businesses..."
5.times{Business.create(name: Faker::Company.name, logo_url: Faker::Company.logo, contact_name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, email: "woobly123@gmail.com")}

puts "Creating Members..."
5.times{Member.create(name: Faker::Name.name, skill: Faker::ProgrammingLanguage.name)}

puts "Creating Teams..."
10.times{Team.create(member_id: rand(1..5)) }

puts "Creating Projects..."
10.times{Project.create(team_id: rand(1..10), business_id: rand(1..5), name: Faker::Emotion.noun, description: Faker::Hipster.paragraph, due_date: Faker::Date.between(from: '2021-11-01', to: '2021-12-23') )}

puts "Creating Tasks..."
10.times{Task.create(project_id: rand(1..10), name: Faker::Hobby.activity, complete: Faker::Boolean.boolean, description: Faker::Hipster.paragraph, skills_needed: Faker::ProgrammingLanguage.name)}

puts "Creating Requests..."
10.times{Request.create(project_id: rand(1..10), description: Faker::Hipster.paragraph)}

puts "✅ Done seeding!"
