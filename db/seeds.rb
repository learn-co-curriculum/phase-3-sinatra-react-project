puts "🌱 Seeding spices..."

Product.destroy_all
Store.destroy_all

product1 = Product.create(
    name: "FlatPhone",
    price: 500,
    inventory: 25,
    category: "phone",
    store_id: 1
)

product2 = Product.create(
    name: "FlatBookPro",
    price: 2000,
    inventory: 18,
    category: "laptop",
    store_id: 1
)

product3 = Product.create(
    name: "FlatPods",
    price: 200,
    inventory: 57,
    category: "earbud",
    store_id: 1
)

Store.create(
    name: "Flatapple Store",
)

puts "✅ Done seeding!"
