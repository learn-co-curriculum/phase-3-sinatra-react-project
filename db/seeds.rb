Coffee.destroy_all
Customer.destroy_all
Shop.destroy_all

puts "🌱 Seeding Coffees..."
Coffee.create(name: "Três Barras", origin_country: "Brazil", roaster: "Steady State" price: "$19", image_url: "https://cdn.shopify.com/s/files/1/1566/6489/products/SS_TresBarras_Recyclable_LabeledProductImage-TEST_900x.jpg?v=1643752164", stock: 10, id: 1)
Coffee.create(name: "Kanzu Lot 17", origin_country: "Rwanda", roaster: "Reanimator", price: "$20", image_url: "https://cdn.shopify.com/s/files/1/1096/7616/products/10oz-Bag-Template-2021-Recovered_dcb3371a-831b-4de0-bbb6-6b6bf1880d23.png?v=1651158677", stock: 12, id: 2)
Coffee.create(name: "El Injerto Bourbon", origin_country: "Guatemala", roaster: "Stumptown", price: "$22", image_url: "https://cdn.shopify.com/s/files/1/0495/9446/6472/products/STC-Shopify-Guatemala-El-Injerto_Product-Image-Transparent-PNG_EDIT_750x.png?v=1622664536", stock: 6, id: 3)
Coffee.create(name: "Familia Montano", origin_country: "Colombia", roaster: "Ritual" price: "$18.5", image_url: "https://ritualcoffee.com/wp-content/uploads/2022/03/12oz.Montano.ko_-1280x1280.png", stock: 2, id: 4)
Coffee.create(name: "Rayos Del Sol", origin_country: "Peru", roaster: "Panther", price: "$22", image_url: "https://static.wixstatic.com/media/ee2f12_3ec99381cec14198b616eabd3fbf3a6b~mv2.png/v1/fill/w_394,h_394,al_c,q_85,usm_0.33_1.00_0.00,enc_auto/2022%20-%20Rayos%20del%20Sol%20retail%20coffee%20bag_.png", stock: 23, id: 5)
Coffee.create(name: "Power & Glory Blend", origin_country: "Guatemala Blend", roaster: "Feast", price: "$16", image_url: "https://images.squarespace-cdn.com/content/v1/578d9a826b8f5bebe7f5699e/1632939910161-X49NVQZHFTWVM1B6UXH8/PandGeditfront.jpeg?format=2500w", stock: 9, id: 6)
Coffee.create(name: "Kola", origin_country: "Ethiopia", roaster: "Small Planes", price: "$19", image_url: "https://cdn.shopify.com/s/files/1/2428/7295/products/Kola_2022_m_530x@2x.jpg?v=1654256692", stock: 4, id: 7)
Coffee.create(name: "Bunum Wo Estate Peaberry", origin_country: "Papua New Guinea", roaster: "Mother Tongue", price: "$22", image_url: "https://cdn.shopify.com/s/files/1/0615/1969/1994/products/Bunum_Wo_1100x.png?v=1654891992", stock: 25, id: 8)
Coffee.create(name: "Ventolera Orange", origin_country: "Colombia", roaster: "Methodical", price: "$28", image_url: "https://cdn.shopify.com/s/files/1/1318/1015/products/bag_1200x.jpg?v=1646144796", stock: 1, id: 9)
Coffee.create(name: "Ribang Gayo", origin_country: "Sumatra", roaster: "Greater Goods", price: "$22", image_url: "https://cdn.shopify.com/s/files/1/0939/8326/products/LTORibangGayo-pichi-1_1000x.png?v=1654779219", stock: 6, id: 10)
Coffee.create(name: "Stay Golden", origin_country: "African Coffee Blend", roaster: "Good Citizen", price: "$21", image_url: "https://cdn.shopify.com/s/files/1/0040/9272/3318/products/goodcitizenbags-5_1080x.jpg?v=1624027286", stock: 2, id: 11)
Coffee.create(name: "Soulmate", origin_country: "Honduras", roaster: "Alma Coffee", price: "$16", image_url: "https://cdn.shopify.com/s/files/1/0095/5682/0026/products/soulmatemediumroastcoffee_2048x2048.png?v=1626352291", stock: 4,id: 12)

puts "🌱 Seeding Customers.."
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 1)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 2)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 3)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 4)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 5)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 6)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 7)
Customer.create(name: Faker::Name.name, email: Faker::Inernet.email, customer_id: 8)

puts "🌱 Seeding Shops.."
Shop.create(name: "Blaque Coffee Co.", location: "Central Perk")
Shop.create(name: "Blaque Coffee Co.", location: "Oliver's Coffee Cup")
Shop.create(name: "Blaque Coffee Co.", location: "The Restaurant at the End of the Universe")

puts "✅ Done seeding!"
