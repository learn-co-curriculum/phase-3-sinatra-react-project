puts "🌱 Seeding spices..."
require 'faker'

40.times do
  Client.create!(
    name: Faker::Name.name,
    phonenumber: Faker::PhoneNumber.cell_phone,
    email: Faker::Internet.email,
    location: Faker::Address.city
  )
end

15.times do
    Worker.create!(
      name: Faker::Name.name,
      phonenumber: Faker::PhoneNumber.cell_phone,
      gender: Faker::Gender.binary_type,
      location: Faker::Address.city,
      identification_number: Faker::IDNumber.valid,
      rating: Faker::Number.between(from: 1, to: 10)
    )
  end

  


puts "✅ Done seeding!"
