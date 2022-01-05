puts 'Seeds are being destroyed'
Order.destroy_all
OrderItem.destroy_all
Product.destroy_all
Review.destroy_all
Department.destroy_all
puts 'Seeds destroyed'

puts "🌱 Seeding spices..."

# Seed your database right here
10.times do
    Product.create(name: Faker::Appliance.equipment, department: Faker::Commerce.department(max: 5), description: Faker::Appliance.brand, unit_price: rand(5.00..55.99),img_url: Faker::Avatar.image, inventory: rand(1..15))
end


# 5.times do
#     Order.create(subtotal: rand(1..100), total: rand(1..100))
# end

# 10.times do
#     OrderItem.create(quantity: rand(0..3), total: rand(0..100), unit_price: rand(1..10),product_id: Product.all.sample.id, order_id: Order.all.sample.id )
# end

20.times do
    Review.create(comment: Faker::Restaurant.review, score: rand(1..5), product_id: Product.all.sample.id)
end

Department.create(title: 'Appliances')
Department.create(title: 'Bath & Faucets')
Department.create(title: 'Blinds & Window')
Department.create(title: 'Building Material')
Department.create(title: 'Electrical')
Department.create(title: 'Tools')
Department.create(title: 'Lighting & Ceiling Fans')
Department.create(title: 'Outdoor Living')
Department.create(title: 'Paint')
Department.create(title: 'Plumbing')
Department.create(title: 'Heating & Cooling')
Department.create(title: 'Kitchen')


puts "✅ Done seeding!"
