puts "🌱 Seeding users..."

# Create 4 users
u1= User.create(name: "Ben")
u2= User.create(name: "Alex")
u3= User.create(name: "Ashley")
u4= User.create(name: "Rachel")

# Create Places 

# Entertainment
p1= Place.create(name:"Punch Bowl Social Atlanta", category: "Entertainment", price: rand(50..200), location: "875 Battery Ave SE Ste 720, Atlanta, GA 30339")
p2= Place.create(name:"Illuminarium", category: "Entertainment", price: rand(50..200), location: "550 Somerset Terrace NE, Atlanta, GA 30306")
p3= Place.create(name:"PuttShack", category: "Entertainment", price: rand(50..200), location: "115 Howell Mill Rd, Atlanta, GA 30318")
p4= Place.create(name:"Magic City", category: "Entertainment", price: rand(50..200), location: "241 Forsyth St SW, Atlanta, GA 30303")
p5= Place.create(name:"Midtown Beach Club", category: "Entertainment", price: rand(50..200), location: "1150 Crescent Ave NE, Atlanta, GA 30309")
p6= Place.create(name:"Painted Pin", category: "Entertainment", price: rand(50..200), location: "737 Miami Cir NE, Atlanta, GA 30324")
p7= Place.create(name:"Reverie VR Bar", category: "Entertainent", price: rand(50..200), location: "728 Monroe Dr NE Suite C, Atlanta, GA 30308")

#Venues 

p8 = Place.create(name:"Truist Park", category: "Venues", price: rand(50..100), location: "755 Battery Ave SE, Atlanta, GA 30339")
p9 = Place.create(name:"State Farm Arena", category: "Venues", price: rand(50..100), location: "1 State Farm Dr, Atlanta, GA 30303")
p10= Place.create(name:"Mercedes Benz Stadium", category: "Venues", price: rand(50..100), location: "54 Peachtree St NW, Atlanta, GA 30303")
p11= Place.create(name:"Coca Cola Roxy", category: "Venues", price: rand(50..100), location: "800 Battery Ave SE #500, Atlanta, GA 30339")
p12= Place.create(name:"Lakewood Amphitheater", category: "Venues", price: rand(50..100), location: "2002 Lakewood Way SW, Atlanta, GA 30315")
p13= Place.create(name:"Tabernacle", category: "Venues", price: rand(50..100), location: "152 Luckie St NW, Atlanta, GA 30303")
p14= Place.create(name:"Cobb Energy Center", category: "Venues", price: rand(50..100), location: "2800 Cobb Galleria Pkwy, Atlanta, GA 30339")
p15= Place.create(name:"Ameris Bank Amphitheatre", category: "Venues", price: rand(50..100), location: "2200 Encore Pkwy, Alpharetta, GA 30009")


#Restaurant
p16= Place.create(name:"Copelands", category: "Restaurants", price: rand(50..300), location: "3101 Cobb Pkwy SE #220, Atlanta, GA 30339")
p17= Place.create(name:"Volcano Steak & Sushi", category: "Restaurants", price: rand(50..300), location: "1985 Cobb Pkwy NW, Kennesaw, GA 30152")
p18= Place.create(name:"Metro Cafe", category: "Restaurants", price: rand(50..300), location: "229 Peachtree St NE B17, Atlanta, GA 30303")
p19= Place.create(name:"Tacos & Tequila", category: "Restaurants", price: rand(50..300), location: "4279 Roswell Rd NE #103, Atlanta, GA 30342")
p20= Place.create(name:"Pasta Bella", category: "Restaurants", price: rand(50..300), location: "3696 Austell Rd SW, Marietta, GA 30008")
p21= Place.create(name:"Blue Moon Pizza", category: "Restaurants", price: rand(50..300), location: "5610 Glenridge Dr #110, Sandy Springs, GA 30342")
p22= Place.create(name:"Cirque Blu Seafood House", category: "Restaurants", price: rand(50..300), location: "935 Marietta St NW, Atlanta, GA 30318")
p23= Place.create(name:"Virgil's Gullah Kitchen", category: "Restaurants", price: rand(50..300), location: "3721 Main St, College Park, GA 30337")

#Auto 

p24= Place.create(name:"All Star Mobile Detailing", category: "Auto", price: rand(50..150), location: "210 Sandy Springs Pl NE, Atlanta, GA 30328")
p25= Place.create(name:"Express Oil Change & Tire Engineers", category: "Auto", price: rand(50..150), location: "5811 Roswell Rd NE, Sandy Springs, GA 30328")


# Create Reviews 
r1 = Review.create(review: "Beers too expensive", user_id: u1.id, place_id: p1.id, star_rating: rand(1..5))
r2 = Review.create(review: "Love the reclining and heated seats", user_id: u2.id, place_id: p8.id, star_rating: rand(1..5))
r3 = Review.create(review: "Best tequila in town", user_id: u3.id, place_id: p19.id, star_rating: rand(1..5))
r4 = Review.create(review: "Ripped me off, dudes are a scam", user_id: u4.id, place_id: p24.id, star_rating: rand(1..5))

puts "✅ Done seeding!"
