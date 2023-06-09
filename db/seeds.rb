puts "🌱 Seeding spices..."

# Create 6 categories
categories = []
6.times do
  categories << Faker::Commerce.unique.department(max: 1)
end

# Create 30 products with random data
30.times do
  Product.create(
    title: Faker::Commerce.unique.product_name,
    price: Faker::Commerce.price(range: 10..100),
    description: Faker::Lorem.sentence(word_count: 10),
    category: categories.sample,
    rating: Faker::Number.between(from: 1, to: 5)
  )
end

# Create 10 users with random data
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.phone_number,
    user_name: Faker::Internet.unique.username(specifier: Faker::Name.first_name),
    password: Faker::Internet.password(min_length: 8)
  )
end

# Create random data for the carts table
30.times do
  Cart.create(
    user_id: Faker::Number.between(from: 1, to: 10), # Assuming you have 10 users in the "users" table
    product_id: Faker::Number.between(from: 1, to: 30), # Assuming you have 30 products in the "products" table
    quantity: Faker::Number.between(from: 1, to: 5)
  )
end

puts "✅ Done seeding!"
