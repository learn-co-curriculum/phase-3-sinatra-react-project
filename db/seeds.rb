puts "🌱 Seeding spices..."

# Seed your database here
puts "Deleting old data..."
Property.destroy_all
Agency.destroy_all
Client.destroy_all


puts "Creating agencies..."
agency1 = Agency.create(name: Faker::Name.name, logo: Faker::Logo.logo, email: Faker::Email.email)
agency2 = Agency.create(name: Faker::Name.name, logo: Faker::Logo.logo, email: Faker::Email.email)


puts "Creating clients..."
client1 = Client.create(name: Faker::Name.name, email: Faker::Email.email, phone: Faker::Phone.phone)
client2 = Client.create(name: Faker::Name.name, email: Faker::Email.email, phone: Faker::Phone.phone)

puts "Creating properties..."
property1 = Property.create(
    cover_photo: "",
    price: 12000,
    rent_frequency: 10000,
    rooms: 2,
    title: "big mansion",
    baths: 3,
    area: "2000 sqft",
    is_verified: "yes",
    external_id: 156,
    description: "asdfghjksdfghjsdfghj",
    type: "mansion",
    purpose: "asdfghjasdfgh",
    furnishing_status: "fully furnished",
    amenities: "balcony, open-plan kitchen",
    photos: "",
    agency_id: 1, 
    client_id: 1
)

puts "✅ Done seeding!"
