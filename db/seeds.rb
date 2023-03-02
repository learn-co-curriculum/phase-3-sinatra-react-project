puts "🌱 Seeding spices..."
require 'faker'

# 40.times do
#   Client.create!(
#     name: Faker::Name.name,
#     phonenumber: Faker::PhoneNumber.cell_phone,
#     email: Faker::Internet.email,
#     location: Faker::Address.city
#   )
# end

# 15.times do
#     Worker.create!(
#       name: Faker::Name.name,
#       phonenumber: Faker::PhoneNumber.cell_phone,
#       gender: Faker::Gender.binary_type,
#       location: Faker::Address.city,
#       identification_number: Faker::IDNumber.valid,
#       rating: Faker::Number.between(from: 1, to: 10)
#     )
#   end

# Service.create(name: "Laundry", description: "Dry cleaning", price: 600, image_url: "https://images.unsplash.com/photo-1586284359445-2e1d8db7f4cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")

# Service.create(name: "Carpet Washing", description: "Removing dirt, stains, and other contaminants from the carpet fibers", price: 500, image_url: "https://images.unsplash.com/photo-1527515637462-cff94eecc1ac?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80")

# Service.create(name: "Ironing", description: "Suit Ironing| Shirt Ironing| Trench Coat Ironing", price: 400, image_url: "https://images.unsplash.com/photo-1542663210-8581a465ddd1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")

# Service.create(name: "House Cleaning", description: "Bedsitter| One Bedroom| Two Bedroom| Three Bedroom| Four/ Five Bedroom", price: 200, image_url: "https://images.unsplash.com/photo-1581578731548-c64695cc6952?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")

# Service.create(name: "Compound Cleaning", description: "Twigs and Leaves| Driveways| Porches", price: 1000, image_url: "https://images.unsplash.com/photo-1673778797664-e0d41a3d974a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1331&q=80")

# Service.create(name: "Dish Washing", description: "Kitchen Utensils", price: 300, image_url: "https://images.unsplash.com/photo-1462475279937-40cb2b162a99?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")

# Service.create(name: "Pest Fumigation", description: "Bed Bugs| Cocroaches| Ants", price: 5000, image_url: "https://i.guim.co.uk/img/media/376f51d0a14fa7b1c16d98ae5d6cf48fe6ef48ad/0_197_3600_2160/master/3600.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=87f77b1cffdbd21fcf2b542ea0a8599a")

# Service.create(name: "Bees Extermination", description: "Exterminating bees from your compound for good", price: 6000, image_url: "https://images.unsplash.com/photo-1531254722074-92eebf4045ae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80")

Service.create(name: "Pest control and fumigation service", description: "Control pests and fumigate premises", price: 150, image_url: "https://thumbor.forbes.com/thumbor/fit-in/900x510/https://www.forbes.com/home-improvement/wp-content/uploads/2022/05/featured-image-pest-control.jpeg-1.jpg")
Service.create(name: "Mold remediation service", description: "Remove mold and prevent future growth", price: 200, image_url: "https://blog.moldinspectionsciences.com/media/1400/misjune1-og.png")
Service.create(name: "Smoke and fire damage restoration service", description: "Restore property after smoke and fire damage", price: 250, image_url: "https://www.harrisbalcombe.com/wp-content/uploads/2017/05/smoke-damage-repair-800x550.jpg")
Service.create(name: "Regular laundry service", description: "Wash and fold clothes", price: 20, image_url: "https://lavenderialaundromat.co.ke/wp-content/uploads/2020/06/serv1.jpg")
Service.create(name: "Dry cleaning service", description: "Clean delicate fabrics", price: 35, image_url: "https://www.presscleaners.com/blog/wp-content/uploads/2017/06/dry-cleaning-drop-off.jpg")
Service.create(name: "Ironing and pressing service", description: "Press and iron clothes", price: 15, image_url: "https://media.product.which.co.uk/prod/images/original/gm-2afcf653-d966-4cda-9789-79cd1710023e-ironinglead.jpeg")
Service.create(name: "Wash and fold service", description: "Wash and fold clothes", price: 25, image_url: "https://greenercleaner.net/wp-content/uploads/2021/09/image-asset.jpeg")
Service.create(name: "Dyeing and color correction service", description: "Dye clothes to desired color", price: 40, image_url: "https://s3.amazonaws.com/threadsmagazine.s3.tauntoncloud.com/app/uploads/2021/05/20124612/TH174_IceDyeing_Main-thumb-1x1.jpg")
Service.create(name: "Stain removal service", description: "Remove stubborn stains", price: 10, image_url: "https://cdn.shopify.com/s/files/1/0062/1592/5815/articles/stain-removal_900x.jpg?v=1627406931")
Service.create(name: "Leather cleaning service", description: "Clean and condition leather items", price: 50, image_url: "https://www.myleatherdoctor.com.au/wp-content/uploads/2020/08/The-Leather-Doctor-Still-23.jpeg")
Service.create(name: "Wedding dress cleaning and preservation service", description: "Clean and preserve wedding dresses", price: 100, image_url: "https://cdn.shopify.com/s/files/1/0067/1521/1879/articles/rsz_wgp_commercial_photoshoot_-_0032_2048x.progressive.jpg?v=1601431300")
Service.create(name: "Rug and carpet cleaning service", description: "Clean rugs and carpets", price: 60, image_url: "https://lavenderlimited.co.ke/wp-content/uploads/2020/03/upholstery1.jpg")
Service.create(name: "Upholstery cleaning service", description: "Clean upholstery on furniture", price: 75, image_url: "https://kdvr.com/wp-content/uploads/sites/11/2021/12/1040x585-2021-1203-the-best-upholstery-cleaner-for-your-couch-e7b744.jpg")
Service.create(name: "Tile and grout cleaning service", description: "Clean tile and grout surfaces", price: 80, image_url: "https://thearchitectsdiary.com/wp-content/uploads/2020/09/6-Reasons-Why-You-Need-a-Professional-Tile-Cleaner-for-Your-Home.jpg")
Service.create(name: "Air duct cleaning service", description: "Clean air ducts to improve indoor air quality", price: 120, image_url: "https://filehandler.revlocal.com/507110")
  
ServiceCategory.create(name: "Laundry")
ServiceCategory.create(name: "Cleaning")
ServiceCategory.create(name: "Fumigation")

puts "✅ Done seeding!"
