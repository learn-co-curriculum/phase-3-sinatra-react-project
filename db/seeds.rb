puts "🌱 Seeding spices..."

# Seed your database right here
10.times do
    Product.create(name: Faker::Beer.name, category:Faker::Beer.alcohol, unit_price: rand(0..10),img_url: Faker::Avatar.image, review: Faker::Verb.base )
end

5.times do
    Order.create(subtotal: rand(1..100), total: rand(1..100))
end

10.times do
    OrderItem.create(quantity: rand(0..3), total: rand(0..100), unit_price: rand(1..10),product_id: Product.all.sample.id, order_id: Order.all.sample.id )end

puts "✅ Done seeding!"
