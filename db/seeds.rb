puts "🌱 Seeding users..."

# Create 4 users
u1= User.create(name: "Ben")
u2= User.create(name: "Alex")
u3= User.create(name: "Ashley")
u4= User.create(name: "Rachel")

# Create Places 

# Entertainment
p1= Place.create(name:"Punch Bowl Social Atlanta", category: "Entertainment", price: rand(50..200), location: "875 Battery Ave SE Ste 720, Atlanta, GA 30339", image_url: "https://i.ibb.co/vYbCyy0/huge.jpg")
p2= Place.create(name:"Illuminarium", category: "Entertainment", price: rand(50..200), location: "550 Somerset Terrace NE, Atlanta, GA 30306", image_url: "https://i.ibb.co/5vkHDZP/illuminarium-atlanta.jpg")
p3= Place.create(name:"PuttShack", category: "Entertainment", price: rand(50..200), location: "115 Howell Mill Rd, Atlanta, GA 30318", image_url: "https://i.ibb.co/ZmLmCK6/puttshack-og-image-default.jpg")
p4= Place.create(name:"Magic City", category: "Entertainment", price: rand(50..200), location: "241 Forsyth St SW, Atlanta, GA 30303", image_url: "https://i.ibb.co/1ZgVfG0/Magic-City-Strip-Club-20170306-Bow-Wow-Instagram-Map.jpg")
p5= Place.create(name:"Midtown Beach Club", category: "Entertainment", price: rand(50..200), location: "1150 Crescent Ave NE, Atlanta, GA 30309", image_url: "https://i.ibb.co/pdjdjPb/348s.jpg")
p6= Place.create(name:"Painted Pin", category: "Entertainment", price: rand(50..200), location: "737 Miami Cir NE, Atlanta, GA 30324", image_url: "https://i.ibb.co/cwcSZZx/ca89f89456453a4c8518bb21677caa79b3b6c7e7.jpg")
p7= Place.create(name:"Reverie VR Bar", category: "Entertainent", price: rand(50..200), location: "728 Monroe Dr NE Suite C, Atlanta, GA 30308", image_url: "https://i.ibb.co/7pSVskY/OIUTTOY2-WIHUIONIH34-Y7-MRG6-M.jpg")
p8= Place.create(name:"Skyline Park", category: "Entertainment", price: rand(50..200), location: "7675 Ponce De Leon Ave NE, Atlanta, GA 30308", image_url: "https://i.ibb.co/ysVwqQy/url-https-afar-media-production-web-s3-amazonaws-com-brightspot-46-e5-80dddaced4bb2b53f240d95b3550-o.jpg")

#Venues 

p9 = Place.create(name:"Truist Park", category: "Venues", price: rand(50..100), location: "755 Battery Ave SE, Atlanta, GA 30339", image_url: "https://i.ibb.co/KKNB1m9/Atlanta-Braves-Truist-Park-at-Night-scaled-e1625510805812.jpg")
p10 = Place.create(name:"State Farm Arena", category: "Venues", price: rand(50..100), location: "1 State Farm Dr, Atlanta, GA 30303", image_url: "https://i.ibb.co/BCfFn7T/philips-arena-1.jpg")
p11= Place.create(name:"Mercedes Benz Stadium", category: "Venues", price: rand(50..100), location: "54 Peachtree St NW, Atlanta, GA 30303", image_url: "https://i.ibb.co/3dwfScR/Mercedes-Benz-1.jpg")
p12= Place.create(name:"Coca Cola Roxy", category: "Venues", price: rand(50..100), location: "800 Battery Ave SE #500, Atlanta, GA 30339", image_url: "https://i.ibb.co/c6d1spd/Coca-Cola-Roxy.jpg")
p13= Place.create(name:"Lakewood Amphitheater", category: "Venues", price: rand(50..100), location: "2002 Lakewood Way SW, Atlanta, GA 30315", image_url: "https://i.ibb.co/M1nwSMW/VWA1346-1024x683.jpg")
p14= Place.create(name:"Tabernacle", category: "Venues", price: rand(50..100), location: "152 Luckie St NW, Atlanta, GA 30303", image_url: "https://i.ibb.co/k9XpX2c/Kendall-Mc-Cargo-STS9-5866.jpg")
p15= Place.create(name:"Cobb Energy Center", category: "Venues", price: rand(50..100), location: "2800 Cobb Galleria Pkwy, Atlanta, GA 30339", image_url: "https://i.ibb.co/stMPMd0/CEPAC-Courtyard.jpg")
p16= Place.create(name:"Ameris Bank Amphitheatre", category: "Venues", price: rand(50..100), location: "2200 Encore Pkwy, Alpharetta, GA 30009", image_url: "https://i.ibb.co/jGxSH4p/Ameris-Amphitheatre-X.jpg")


#Restaurant
p17= Place.create(name:"Copelands", category: "Restaurants", price: rand(50..300), location: "3101 Cobb Pkwy SE #220, Atlanta, GA 30339", image_url: "https://i.ibb.co/D16fB84/cumberland-exterior.jpg")
p18= Place.create(name:"Volcano Steak & Sushi", category: "Restaurants", price: rand(50..300), location: "1985 Cobb Pkwy NW, Kennesaw, GA 30152", image_url: "https://i.ibb.co/QvqR2mx/1540009565299-w2880-bb.jpg")
p19= Place.create(name:"Metro Cafe", category: "Restaurants", price: rand(50..300), location: "229 Peachtree St NE B17, Atlanta, GA 30303", image_url: "https://i.ibb.co/YbTXF8k/2019-9-1-Metro-Cafe-3-1-1024x681.jpg")
p20= Place.create(name:"Tacos & Tequila", category: "Restaurants", price: rand(50..300), location: "4279 Roswell Rd NE #103, Atlanta, GA 30342", image_url: "https://i.ibb.co/5GbLWtR/tacos-and-tquilas-mexican.jpg")
p21= Place.create(name:"Pasta Bella", category: "Restaurants", price: rand(50..300), location: "3696 Austell Rd SW, Marietta, GA 30008", image_url: "https://i.ibb.co/XzpDygV/34021cb1-b698-4a6b-90d3-9d0995f7f6b2.jpg")
p22= Place.create(name:"Blue Moon Pizza", category: "Restaurants", price: rand(50..300), location: "5610 Glenridge Dr #110, Sandy Springs, GA 30342", image_url: "https://i.ibb.co/fXvSQjS/take-n-bake-img-compressed.jpg")
p23= Place.create(name:"Cirque Blu Seafood House", category: "Restaurants", price: rand(50..300), location: "935 Marietta St NW, Atlanta, GA 30318", image_url: "https://i.ibb.co/YhrwrDG/blu-seafood03.jpg")
p24= Place.create(name:"Virgil's Gullah Kitchen", category: "Restaurants", price: rand(50..300), location: "3721 Main St, College Park, GA 30337", image_url: "https://i.ibb.co/6FbrFJx/OXS5-XZULKXIGZ73-UHWGDDEZQPI.jpg")

#Auto 

p25= Place.create(name:"All Star Mobile Detailing", category: "Auto", price: rand(50..150), location: "210 Sandy Springs Pl NE, Atlanta, GA 30328", image_url: "https://i.ibb.co/8DkL5P2/Gold-Logo.jpg")
p26= Place.create(name:"Express Oil Change & Tire Engineers", category: "Auto", price: rand(50..150), location: "5811 Roswell Rd NE, Sandy Springs, GA 30328", image_url: "https://i.ibb.co/ZL1JZH3/761187.jpg")
p27= Place.create(name:"WT Standard Automotive and Collision", category: "Auto", price: rand(50..150), location: "454 Marietta St NW near, Atlanta, GA 30313", image_url: "https://i.ibb.co/kBwCnHN/4.jpg")
p28= Place.create(name:"Heath's Auto Care", category: "Auto", price: rand(50..150), location: "610 Whitehall St SW, Atlanta, GA 30303", image_url: "https://i.ibb.co/PjWVbWP/1314535.jpg")
p29= Place.create(name:"Gorilla Car Wash Atlanta", category: "Auto", price: rand(50..150), location: "1836 Piedmont Ave NE, Atlanta, GA 30324", image_url: "https://i.ibb.co/9vn3GSG/22448981-yn8-Yo-Sqr-CURS8-W4-ZN9t3b-B6u-NPLvi93-VW1vwxz-LMc-NA.jpg")
p30= Place.create(name:"Soap Hand Car Wash", category: "Auto", price: rand(50..150), location: "2195 Cheshire Bridge Rd, Atlanta, GA 30303", image_url: "https://i.ibb.co/KLNKxn8/348s.jpg")
p31= Place.create(name:"Atlanta Luxury Window Tinting", category: "Auto", price: rand(50..150), location: "157 North Avenue NE, Atlanta, GA 30308", image_url: "https://i.ibb.co/Ns4D4hQ/c870x524.jpg")
p32= Place.create(name:"Buckhead Collision", category: "Auto", price: rand(50..150), location: "1900 Piedmont Cir NE, Atlanta, GA 30324", image_url: "https://i.ibb.co/fkgZzKz/DSC-6401.jpg")




# Create Reviews 
r1 = Review.create(review: "Beers too expensive", user_id: u1.id, place_id: p1.id, star_rating: rand(1..5))
r2 = Review.create(review: "Love the reclining and heated seats", user_id: u2.id, place_id: p8.id, star_rating: rand(1..5))
r3 = Review.create(review: "Best tequila in town", user_id: u3.id, place_id: p19.id, star_rating: rand(1..5))
r4 = Review.create(review: "Ripped me off, dudes are a scam", user_id: u4.id, place_id: p24.id, star_rating: rand(1..5))

puts "✅ Done seeding!"
