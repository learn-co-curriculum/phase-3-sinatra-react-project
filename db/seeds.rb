puts "Deleting old data ..."

Farm.destroy_all
Product.destroy_all
Purchase.destroy_all



puts "Creating Seed Data..."


# Seed your database here

f1 = Farm.create(name: "Sunnyside Farms", location: "Lodi, CA", rating: 4)
f2 = Farm.create(name: "Rabbit Hill Growers", location: "Modesto, CA", rating: 5)
f3 = Farm.create(name: "Pristine Pastures", location: "Seattle, WA", rating: 5)
f4 = Farm.create(name: "Greatful Gardens", location: "Denver, CO", rating: 4)
f5 = Farm.create(name: "Avonwood Farms", location: "Pleasantville, CA", rating: 3)

p1 = Product.create(farm_id: f2.id, name: "Apples", category: "fruit", description: "Sweet and juicy! Freshly picked Honeycrisp apples.", picture_link: "https://i.imgur.com/VAW1a6y.png", price: 6, stock: 1053)
p2 = Product.create(farm_id: f4.id, name: "Peaches", category: "fruit", description: "Bursting with flavor. The most delicious peaches available.", picture_link: "https://i.imgur.com/T667Zhu.png", price: 7, stock: 758)
p3 = Product.create(farm_id: f1.id, name: "Pears", category: "fruit", description: "Pears so good they make your head pop.", picture_link: "https://i.imgur.com/Sxc9QvS.png", price: 5, stock: 933)
p4 = Product.create(farm_id: f5.id, name: "Plums", category: "fruit", description: "Heirloom plums straight from our orchards.", picture_link: "https://i.imgur.com/rvfyHFL.png", price: 5, stock: 567)
p5 = Product.create(farm_id: f3.id, name: "Watermelon", category: "fruit", description: "The perfect juicy treat for any occasion.", picture_link: "https://i.imgur.com/nLquKMp.png", price: 9, stock: 458)
p6 = Product.create(farm_id: f3.id, name: "Broccoli", category: "vegetable", description: "Perfectly grown, blemish-free broccoli heads.", picture_link: "https://i.imgur.com/PSRGJkR.png", price: 3, stock: 1121)
p7 = Product.create(farm_id: f1.id, name: "Green Beans", category: "vegetable", description: "Wonderful as a simple snack or as part of a meal.", picture_link: "https://i.imgur.com/Yjb8ACR.png", price: 2, stock: 1262)
p8 = Product.create(farm_id: f5.id, name: "Asparagus", category: "vegetable", description: "Freshly grown asparagus straight from our farm to your table.", picture_link: "https://i.imgur.com/w7qyqqo.png", price: 4, stock: 1098)
p9 = Product.create(farm_id: f4.id, name: "Carrots", category: "vegetable", description: "Don't let the rabbits eat them all, order our carrots today!", picture_link: "https://i.imgur.com/5K2WvTb.png", price: 2, stock: 1439)
p10 = Product.create(farm_id: f2.id, name: "Bell Peppers", category: "vegetable", description: "Red, green, yellow or orange - they're all delicious.", picture_link: "https://i.imgur.com/w7gEPWa.png", price: 3, stock: 967)


pur1 = Purchase.create(product_id: p10.id, discount: 0, total: 0, quantity: 5 )
pur2 = Purchase.create(product_id: p2.id, discount: 0, total: 0, quantity: 8)
pur3 = Purchase.create(product_id: p4.id, discount: 0, total: 0, quantity: 6)
pur4 = Purchase.create(product_id: p3.id, discount: 0, total: 0, quantity: 10)
pur5 = Purchase.create(product_id: p9.id, discount: 0, total: 0, quantity: 7)


puts "✅ Done seeding!"
