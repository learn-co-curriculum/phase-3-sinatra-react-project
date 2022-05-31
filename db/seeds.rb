puts "🌱 Seeding spices..."
puts "Deleting Car/Project data..."
Car.destroy_all
Project.destroy_all

puts "Creating Cars..."
c1 = Car.create(
    name: "Fast Wagon",
    year: 2000,
    make: "BMW",
    model: 323,
    image_url: "https://i.ytimg.com/vi/7pAmQ4KDDYM/maxresdefault.jpg"
)

puts "Creating Projects..."
Project.create(
    title: "Brake Change", 
    time_required: 2.5, 
    tools_required: "Lorem Ipsm", 
    description: "Lorem Ipsm", 
    created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
    car_id: c1.id)

Project.create(
        title: "Wheel Hub Replacement", 
        time_required: 4, 
        tools_required: "Lorem Ipsm", 
        description: "Lorem Ipsm", 
        created_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
        updated_at: Faker::Time.between(from: 30.days.ago, to: Time.now), 
        car_id: c1.id)



puts "✅ Done seeding!"
