puts "🌱 Seeding spices..."

Product.destroy_all
Store.destroy_all

product1 = Product.create(
    name: "FlatPhone",
    price: 500,
    inventory: 25,
    category: "phone"
)

product2 = Product.create(
    name: "FlatBookPro",
    price: 2000,
    inventory: 18,
    category: "laptop"
)

product3 = Product.create(
    name: "FlatPods",
    price: 200,
    inventory: 57,
    category: "earbud"
)

Store.create(
    name: "Flatapple Store",
    product_id: product2.id
)

puts "✅ Done seeding!"
