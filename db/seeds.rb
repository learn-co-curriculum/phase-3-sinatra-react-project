puts "🌱 Seeding spices..."

Customer.destroy_all

20.times do
    customer = Customer.create(
        full_name: Faker::Name.name,
        address: Faker::Address.street_name
    )
end

puts "✅ Done seeding!"
