puts "🌱 Seeding spices..."

Customer.destroy_all
Product.destroy_all

20.times do
    customer = Customer.create(
        full_name: Faker::Name.name,
        address: Faker::Address.street_name
    )
end

50.times do
    product = Product.create(
        product_name: Faker::Commerce.product_name,
        price: Faker::Commerce.price(range: 50.0..1000.0),
        description: Faker::Commerce.material,
        img_url: Faker::LoremFlickr.image
    )
end

puts "✅ Done seeding!"
