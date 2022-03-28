require 'faker'
puts "🌱 Seeding categories..."
10.times do 
Category.create(name: Faker::Coffee.blend_name)
end
puts "🌱  Seeding foods"
10.times do 
    Food.create(name: Faker::Dessert.variety, price: rand(1..20), category_id: Category.ids.sample, description: "Hello" )
end

# Seed your database here

puts "✅ Done seeding!"
