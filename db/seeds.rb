puts "🌱 Seeding restaurant data..."

#Restaurant

# template
# Restaurant.create(name:,
# image_url: , 
# location: , 
# description: , 
# cuisine: ,
# website: "https://www.smallgoodsusa.com",
# menu: ,
# price: )

# so far we have fast food, breakfast, Taiwanese, Japanese, French, Italian, American, Seafood, Japanese, Contemporary, Vegetarian Friendly, Pizza, Thai, Steakhouse, Mediterranean, Greek, Mexican, Irish

McDonalds = Restaurant.create(name: "McDonald's", image_url: "https://www.eatthis.com/wp-content/uploads/sites/4/2020/10/mcdonalds-exterior.jpg?quality=82&strip=1&w=1250", location: "1280 Park Blvd, San Diego, CA 92101", description: "McDonald's Corporation is an American multinational fast food chain and real estate company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States.", cuisine: "Fast Food", website: "https://www.mcdonalds.com/us/en-us/location/CA/SAN-DIEGO/1280-12TH-ST/3181.html?cid=RF:YXT:GMB::Clicks", menu: "https://www.mcdonalds.com/us/en-us/full-menu.html", price: "$")
Snooze = Restaurant.create(name: "Snooze, an A.M. Eatery", image_url: "https://www.snoozeeatery.com/wp-content/uploads/2019/09/Hillcrest_interior.jpg", location: "3940 5th Ave San Diego, CA 92103", description: "Most breakfast & brunch restaurants start with the same script: eggs, batter, coffee & a big ol' griddle. We've found scripts are a lot like pancakes, they're best when flipped, so we're always looking to turn the best breakfast classics upside-down & on their side. Stop by for delicious pancakes, french toast, benedicts, breakfast burritos, oatmeal, breakfast sandwiches, bacon & more. From paleo to vegetarian & vegan or dairy free & gluten free friendly, we'll happily accommodate food allergies & diets. We want each morning to feel like your weekend & happy hour rolled into one, so our restaurants feature a full bar with alcoholic beverages. From mimosas to bloody marys, margaritas & local craft beers, we've got cocktails & brews covered.", cuisine: "Breakfast", website: "https://www.snoozeeatery.com", menu: "https://www.snoozeeatery.com/menu/", price: "$$")
Din_Tai = Restaurant.create(name: "Din Tai Fung", image_url: "https://www.dintaifungusa.com/us/image/1085", location: "4301 La Jolla Village Dr Bldg P Unit 2000 San Diego, CA 92122", description: " Din Tai Fung is a world renowned Taiwanese restaurant (now chain) that specializes in soup dumplings and noodles. The restaurant has been awarded the Michelin star 5 times, and is recognised as one of the best dim sum eateries in the world. Their signature dish, xiaolongbao is a must try.", cuisine: "Taiwanese", website: "https://dintaifungusa.com", menu: "https://dintaifungusa.com/us/menu.html", price: "$$")
Tajima = Restaurant.create(name: "Tajima Ramen House Restaurant", image_url: "https://secureservercdn.net/198.71.189.51/w7i.d39.myftpupload.com/wp-content/uploads/2022/06/Tajima-CH-1.jpg", location: "4681 Convoy Ste I San Diego, CA 92111", description: "Tajima offers one of the widest selections of Japanese cuisine available at affordable prices, to satisfy the unique tastes and desires of everyone in your party.", cuisine: "Japanese", website: "https://tajimaramen.com/tajima-convoy/", menu: "https://tajimaramen.com/tajima-convoy/", price: "$$")
Cote_Dazur = Restaurant.create(name: "Cote D'azur Restaurant", image_url: "https://lh3.googleusercontent.com/p/AF1QipPbEHliYHvrmcYlK0nZQwnQjVRSQdoaLByyThwk=s1360-w1360-h1020", location: "8935 Towne Centre Dr Ste 110 San Diego, CA 92122", description: "At Cote d'Azur Restaurant we take pride in serving only the best authentic French cuisine to the people of the San Diego area. Our cafe and restaurant is the perfect spot for breakfast, lunch, or dinner. Our breakfast menu includes bagels, omelettes, and crepes. Our lunch and dinner menus have a variety of tasty soups, sandwiches, and pastas. Stop by Cote d'Azur Restaurant for a taste of authentic French favorites!", cuisine: "French", website: "https://www.cafecotedazur.com", menu: "https://www.cafecotedazur.com/full-menu", price: "$$")
Parma = Restaurant.create(name: "Parma Cucina Italiana", image_url: "https://lh3.googleusercontent.com/p/AF1QipP7Ro3hlUqiQ4el6tXX3VyI-SfIzXPHSnGk0Wg0=s1360-w1360-h1020", location: "3850 5th Ave, San Diego, CA 92103", description: "Traditional Italian cuisine, inspired by generations of home cooking, fresh ingredients and simple presentations", cuisine: "Italian", website: "https://parmaitaliankitchen.com/", menu: "https://parmaitaliankitchen.com/san-diego-hillcrest-parma-cucina-italiana-food-menu", price: "$$$")
Trulucks = Restaurant.create(name: "Truluck's Ocean's Finest Seafood & Crab", image_url: "https://trulucks.com/wp-content/uploads/2019/10/4-Private-Sonoma-Room-650x433.jpg", location: "8990 University Center Ln, San Diego, CA 92122", description: "Located in UTC at The Aventine on La Jolla Village Drive just east of The 5, Truluck’s La Jolla sits a short drive from the beach, UC San Diego, and historic Torrey Pines. Truluck’s is committed to serving fresh seafood and creating memorable moments nightly for our guests. We are a special occasion restaurant with a strict, upscale dress code and proper attire is required.", cuisine: "American, Seafood", website: "https://trulucks.com/locations/la-jolla-california/", menu: "https://trulucks.com/menu/?location_id=trulucks-seafood-steak-and-cr", price: "$$$$")
Hodads = Restaurant.create(name: "Hodad's Downtown", image_url: "https://farm5.static.flickr.com/4001/4386303137_cb132176f3_b.jpg", location: "945 Broadway, San Diego, CA 92101", description: "This divey bar serves the best burgers, sandwiches, shakes, and fries in town!", cuisine: "American, Fast Food", website: "https://hodadies.com/", menu: "https://hodadies.com/menu/", price: "$-$$")
Azuki = Restaurant.create(name: "Azuki Sushi Lounge", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/15/31/ab/32/family-meal.jpg", location: "2321 Fifth Ave, San Diego, CA 92101", description: "Creative rolls & carefully sourced Japanese fare paired with an extensive sake menu in modern digs", cuisine: "Japanese, Sushi", website: "http://azukisushi.com/", menu: "http://places.singleplatform.com/azuki-sushi-lounge/menu", price: "$$$")
Veranda = Restaurant.create(name: "Veranda Fireside Lounge & Restaurant", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/12/58/4d/5d/veranda-fireside-lounge.jpg", location: "17550 Bernardo Oaks Drive Rancho Bernardo Inn, San Diego, CA 92128-2112", description: "Inspired by the olive trees, gardens and villas that dot the Mediterranean coastline, the Veranda Fireside Lounge & Restaurant melds the classic and the unexpected, making it a place one simply has to experience. Fresh and modern, Veranda's seasonal menus feature Mediterranean cuisine with a Southern California twist.", cuisine: "Contemporary, Vegetarian Friendly", website: "https://www.ranchobernardoinn.com/dine/veranda-fireside-lounge?utm_source=extnet&utm_medium=yext", menu: "https://www.ranchobernardoinn.com/dine/veranda-fireside-lounge?utm_source=extnet&utm_medium=yext", price: "$$$")
Cowboy_Star = Restaurant.create(name: "Cowboy Star", image_url: "https://images.squarespace-cdn.com/content/v1/5d4ae8dbc0741e0001937a5b/1565377045276-BKBZ1IGQT55TEJPYNK90/CowboyStar_Steak.jpg?format=2500w", location: "640 10th Ave, San Diego, CA 92101-7218", description: "Cowboy Star Restaurant and Butcher Shop is the first restaurant in San Diego’s East Village to serve up a unique Neighborhood Fine Dining experience by combining contemporary American cuisine with a western flare.", cuisine: "American, Steakhouse", website: "https://www.cowboystarsd.com/", menu: "https://www.cowboystarsd.com/san-diego-menu", price: "$$$$")
Supannee = Restaurant.create(name: "Supannee House of Thai", image_url: "https://sdthai.com/img/gallery/001.jpg", location: "2907 Shelter Island Dr Ste 110, San Diego, CA 92106", description: "Authentic Thai Cuisine, located in San Diego, CA", cuisine: "Thai", website: "https://sdthai.com/", menu: "https://togo.dylish.com/restaurant/supannee-house-of-thai/home", price: "$$")
Pizza_Port = Restaurant.create(name: "Pizza Port Brewing Co.", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/09/46/e9/b7/pizza-port-ocean-beach.jpg", location: "1956 Bacon St, San Diego, CA 92107", description: "Good food & good beer bring good cheer!", cuisine: "Pizza, American", website: "https://www.pizzaport.com/", menu: "https://www.pizzaport.com/", price: "$")
Juniper_Ivy = Restaurant.create(name: "Juniper & Ivy", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/13/eb/69/b5/juniperandivy.jpg", location: "2228 Kettner Blvd, San Diego, CA 92101", description: "Juniper & Ivy delivers a chef-driven menu that uses hand-selected, seasonal ingredients crafted with precision, passion, and creativity. Daily offerings rotate, based on the top ingredients brought in by local farmers and fishermen each morning.", cuisine: "American, Vegetarian Friendly", website: "https://www.juniperandivy.com/", menu: "https://www.juniperandivy.com/menu/", price: "$$$$")
Meze = Restaurant.create(name: "Meze Greek Fusion", image_url: "https://static.spotapps.co/spots/46/f4d317445e4755aadcbcd5254f1d27/full", location: "345 6th Ave, San Diego, CA 92101", description: "Mezé is the perfect gathering spot for special event celebrations, relaxing dinners with family and friends, a peaceful lunch, or a handcrafted cocktail and a quick bite to eat before heading to a Padres game, or a night out in the Gaslamp.", cuisine: "Mediterranean, Greek", website: "https://gaslampmeze.com/", menu: "https://gaslampmeze.com/san-diego-gaslamp-meze-greek-fusion-food-menu", price: "$$-$$$")
Milpas = Restaurant.create(name: "Las Cuatro Milpas", image_url: "https://media-cdn.tripadvisor.com/media/photo-p/12/2d/d4/d8/las-cuatro-milpas.jpg", location: "1875 Logan Ave, San Diego, CA 92113", description: "A family owned business serving tamales, menudo, fresh tortillas, and all the Mexican classics, at an unbelievable price!", cuisine: "Mexican", website: "http://www.las-cuatro-milpas.com/", menu: "http://www.las-cuatro-milpas.com/#menu", price: "$")
Waffle_Spot = Restaurant.create(name: "The Waffle Spot", image_url: "https://media-cdn.tripadvisor.com/media/photo-s/0f/a1/ac/28/bluberry-waffle-plate.jpg", location: "1333 Hotel Cir S, San Diego, CA 92108", description: "Waffles! The Waffle Spot has been a local favorite in Mission Valley for 25 years. Our family-friendly diner features fresh waffles 7-days a week.", cuisine: "Breakfast", website: "https://wafflespotsandiego.com/", menu: "https://wafflespotsandiego.com/menu/", price: "$")
The_Field = Restaurant.create(name: "The Field Irish Pub", image_url: "https://static.spotapps.co/spots/d9/4bceb0e8ec11e8bc72b7c8c7a32531/full", location: "544 5th Ave, San Diego, CA 92101", description: "What happens when an Irish couple with a big dream ships a pub, piece by piece, to the heart of America’s finest city? The Field Irish Pub — it's a genuine bit of Ireland in San Diego’s downtown Gaslamp Quarter.", cuisine: "Irish", website: "https://thefield.com/", menu: "https://thefield.com/san-diego-gaslamp-quarter-the-field-irish-pub-food-menu", price: "$$")
Dockside = Restaurant.create(name: "Dockside 1953", image_url: "https://lh3.googleusercontent.com/p/AF1QipOR911j7jRqWSVnXhGRwiMvje0i0FY-uV1HDov-=s1360-w1360-h1020", location: "998 W Mission Bay Dr, San Diego, CA 92109", description: "Situated just steps from the beach and resort marina, Dockside 1953 is the new nautical-inspired restaurant in Mission Bay. Guests are spoiled with a spacious outdoor patio featuring cozy fire pits, a covered trellis, and stunning unobstructed views of Mission Bay.", cuisine: "American, Vegetarian Friendly", website: "https://www.bahiahotel.com/dockside-1953", menu: "https://www.bahiahotel.com/dockside-1953", price: "$$$")
Enoteca = Restaurant.create(name: "Enoteca Adriano", image_url: "https://static.wixstatic.com/media/8ab012_6dae73780d3442fa8ae4b073bce91859~mv2.jpg/v1/fill/w_640,h_426,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/8ab012_6dae73780d3442fa8ae4b073bce91859~mv2.jpg", location: "4864 Cass St, San Diego, CA 92109", description: "Welcome to Enoteca Adriano, Pacific Beach's first Wine Bar. Highlighting Italian food and wine from 13 wine regions, we offer daily specials, wine flights, and wine pairings.", cuisine: "Italian", website: "https://www.enotecaadriano.com/", menu: "https://www.enotecaadriano.com/menu", price: "$$-$$$")
TotM = Restaurant.create(name: "Top of the Market", image_url: "https://lh3.googleusercontent.com/p/AF1QipPxPun8dLzwM5GHvpLQufzCK83CXC8mqkM2XVvE=s1360-w1360-h1020", location: "750 N Harbor Dr, San Diego, CA 92101", description: "From our perch atop The Fish Market restaurant we offer expansive views from Coronado to Point Loma. Whether joining us for cocktails on our rooftop deck or for intimate seating in our elegant dining room, you can anticipate superior, attentive service and a truly elevated sea to table experience.", cuisine: "American, Seafood", website: "https://topofthemarketsd.com/", menu: "https://topofthemarketsd.com/dinner-menu/", price: "$$$$")


#Review

#template
# Review.create(username: , 
# date: ,
# rating: ,
# review: ,
# restaurant: )

Review.create(username: "Amy Smith", date: "11/20/2020", rating: 3, review: "Getting 2 soft serve vanilla cones for my mother and I'm having for dinner tonight. Drive-thru taken. I went in right after 10 and was told they dont start serving soft serve until 10:30. I waited until in the parking lot less than 30 minutes and went back in line and ordered again and the worker said they aren't serving soft serve and I said I was just here 30 minutes ago and was told it would be ready at 10:30am. Then the worker said okay and I guess they magically had it again. Hmm...anyways, I paid for it and it was handed over. Definitely not good service, but the soft serve was good!", restaurant: McDonalds)
Review.create(username: "Camille Jones", date: "10/5/2021", rating: 5, review: "Very good breakfast items. We got the French toast and the shrimp and grits and the eggs benedict. I highly recommend this place and the staff was very attentive.", restaurant: Snooze)
Review.create(username: "Camille Jones", date: "07/25/2022", rating: 5, review: "Created this account just to write this review because the service was EXCEPTIONAL :) Ended up getting seated half an hour later than the expected eta they gave us, but we understand it gets busy and expected it. However, we were surprised at how nice and accommodating the manager was. We honestly weren't bothered by the wait, but she was so generous and gave us the cucumber appetizer on the house and we appreciate her for taking the time and effort on doing something out of their way. Also, it was absolutely on my end, but I miscommunicated something with our server, Hannah. It was totally my fault, but she was VERY nice and accommodating towards dealing with my mistakes and everything worked out in the end. Accidentally ordered a couple of extra stuff, but tbh I'm just excited I can eat more DTF for later. I just want to thank her for handling our situation really well :^) Can't forget to mention how yummy everything was. I've been here a bunch of times, but it was the first for the rest of my family and they allied LOVED it. We are very excited to go back again !", restaurant: Din_Tai)
Review.create(username: "John Roberts", date: "06/06/2022", rating: 5, review: "Best ramen place to go to Would definetoy recommend. I go here very often. All the options are good", restaurant: Tajima)
Review.create(username: "Himesh Chandra", date: "03/10/2022", rating: 5, review: "Food was sooooo delicious!! Service was awesome, fast and efficient. Ambiance was nice and friendly, overall a very cute and cozy place to drink delicious coffee and have a delicious meal.", restaurant: Cote_Dazur)
Review.create(username: "Amy Smith", date: "10/5/2021", rating: 4, review: "Excellent location and setting for an amazing date night! The tiramisu was lovely and the wait staff picked a great wine pairing for my meal. I thought the portions were quite small for the price, but otherwise a lovely experience!", restaurant: Parma)
Review.create(username: "John Roberts", date: "11/20/2020", rating: 4, review: "Look, seafood can be expensive, and this place is definitely expensive. But at Truluck's, you get what you pay for. Get the swordfish, it'll change you.", restaurant: Trulucks)
Review.create(username: "Camille Jones", date: "11/20/2020", rating: 4, review: "I came here with my boyfriend and his parents and I thought I would hate this place, but I was wrong! I hadn't had a burger in forever and the Hodad's Blue Sky Burger made me want to eat more burgers. They give you A LOT of food!", restaurant: Hodads)
Review.create(username: "Himesh Chandra", date: "11/20/2020", rating: 5, review: "I've eaten sushi all over town and I keep coming back for the Nigiri Plate, always masterfully selected and prepared by the chefs.", restaurant: Azuki)
Review.create(username: "Amy Smith", date: "06/06/2022", rating: 3, review: "I think this place tries to hide its food behind the gorgeous scenery and amenities. $15 for 'Immunity Booster Juice'? Get real.", restaurant: Veranda)
Review.create(username: "Himesh Chandra", date: "10/5/2021", rating: 3, review: "I came here with my coworkers who are constantly trying to out-man each other. Eating a 3 lb Tomahawk steak does not make you a man. The Ribeye was good though.", restaurant: Cowboy_Star)
Review.create(username: "Himesh Chandra", date: "06/06/2022", rating: 5, review: "Every time I order takeout from Supannee, I tell myself I will try a new dish. But I can't prevent myself from ordering the Gra Pow Pork Belly.", restaurant: Supannee)
Review.create(username: "John Roberts", date: "10/5/2021", rating: 5, review: "Nothing better than some good pizza, a local draft beer, and watching the Padres with your bros.", restaurant: Pizza_Port)
Review.create(username: "Amy Smith", date: "03/10/2022", rating: 2, review: "I only came here because they got a James Beard award. The food was so small and weird and gross. Loved the vibe though!", restaurant: Juniper_Ivy)
Review.create(username: "John Roberts", date: "03/10/2022", rating: 1, review: "I came here with my bros after the Padres game - place was way too crowded, service was so slow, and they don't even have Pacificos. Should have gone back to Pizza Port.", restaurant: Meze)
Review.create(username: "Camille Jones", date: "06/06/2022", rating: 2, review: "I got the Waffle Eggs Benedict and they gave me a Bacon Waffle Eggs Benedict. I ate half before realizing there was meat in it! Now I feel so guilty and digusting. I wish it wasn't so good... ", restaurant: Waffle_Spot)
Review.create(username: "Himesh Chandra", date: "04/21/2022", rating: 2, review: "The fish was oily and soggy, the fries were way too salty, and they gave me mushy peas - those aren't even Irish!", restaurant: The_Field)
Review.create(username: "Amy Smith", date: "03/10/2022", rating: 3, review: "I got the Cioppino because a bunch of you guys said it was the best thing to get. I thought the flavor was really good but there was barely any fish in it! Not worth the price in my opinion.", restaurant: Dockside)
Review.create(username: "Camille Jones", date: "04/21/2022", rating: 5, review: "I don't understand how this isn't the most famous, popular Mexican food spot in the city. Their tamales are exquisite.", restaurant: Milpas)
Review.create(username: "John Roberts", date: "04/21/2022", rating: 4, review: "This place has a crazy view! I got the lobster and it was better than I could have imagined. Just wish it was a little more affordable...", restaurant: TotM)


#Favorite

# template
# Favorite.create(food_name: , 
# likes: , 
# restaurant: )

Favorite.create(food_name: "McChicken", likes: 200, restaurant: McDonalds)
Favorite.create(food_name: "Caramel Frappe", likes: 178, restaurant: McDonalds)
Favorite.create(food_name: "French Fries", likes: 177, restaurant: McDonalds)
Favorite.create(food_name: "Smashed Avocado Benny", likes: 500, restaurant: Snooze)
Favorite.create(food_name: "Tofu Scramble", likes: 488, restaurant: Snooze)
Favorite.create(food_name: "OMG! French Toast", likes: 435, restaurant: Snooze)
Favorite.create(food_name: "Xiaolongbao", likes: 755, restaurant: Din_Tai)
Favorite.create(food_name: "Sweet & Sour Pork Baby Back Ribs", likes: 435, restaurant: Din_Tai)
Favorite.create(food_name: "House Beef Soup with Bone-in Beef Short Ribs", likes: 435, restaurant: Din_Tai)
Favorite.create(food_name: "SPICY SALMON POKE BOWL", likes: 566, restaurant: Tajima)
Favorite.create(food_name: "CHICKEN CHASHU FRIED RICE", likes: 564, restaurant: Tajima)
Favorite.create(food_name: "VEGETARIAN FRIED RICE", likes: 560, restaurant: Tajima)
Favorite.create(food_name: "French Toast", likes:338, restaurant: Cote_Dazur)
Favorite.create(food_name: "Salmon Benedict", likes:237 , restaurant: Cote_Dazur)
Favorite.create(food_name: "Iced Caramel Coffee", likes:100, restaurant: Cote_Dazur)
Favorite.create(food_name: "Penne all'Arrabbiata", likes: 15, restaurant: Parma)
Favorite.create(food_name: "Polpette al Sugo", likes: 13, restaurant: Parma)
Favorite.create(food_name: "Tiramisu", likes: 11, restaurant: Parma)
Favorite.create(food_name: "Fresh Florida Stone Crab Claws", likes: 50, restaurant: Trulucks)
Favorite.create(food_name: "South African Cold-Water Lobster Tail", likes: 45, restaurant: Trulucks)
Favorite.create(food_name: "Pacific Swordfish", likes: 42, restaurant: Trulucks)
Favorite.create(food_name: "Guido Burger", likes: 324, restaurant: Hodads)
Favorite.create(food_name: "Blue Jay Burger", likes: 250, restaurant: Hodads) 
Favorite.create(food_name: "Neapolitan Shake", likes: 140, restaurant: Hodads)
Favorite.create(food_name: "Nigiri Plate", likes: 67, restaurant: Azuki)
Favorite.create(food_name: "Toro Chirashi", likes: 54, restaurant: Azuki)
Favorite.create(food_name: "Salt & Pepper Karaage", likes: 45, restaurant: Azuki)
Favorite.create(food_name: "Cast Iron Cinnamon Roll", likes: 307, restaurant: Veranda)
Favorite.create(food_name: "Shaved Ham + Eggs Benedict", likes: 287, restaurant: Veranda)
Favorite.create(food_name: "Immunity Booster Juice", likes: 240, restaurant: Veranda)
Favorite.create(food_name: "12 oz. NY Strip", likes: 180, restaurant: Cowboy_Star)
Favorite.create(food_name: "14 oz Ribeye Steak", likes: 160, restaurant: Cowboy_Star)
Favorite.create(food_name: "Woodfired Elk Rack Chop", likes: 59, restaurant: Cowboy_Star)
Favorite.create(food_name: "Khao Soi Duck", likes: 42, restaurant: Supannee)
Favorite.create(food_name: "Grapow Pork Belly", likes: 37, restaurant: Supannee)
Favorite.create(food_name: "Tom Yum Noodle Soup", likes: 33, restaurant: Supannee)
Favorite.create(food_name: "Pizza Carlsbad", likes: 690, restaurant: Pizza_Port)
Favorite.create(food_name: "Pizza San Francisco", likes: 687, restaurant: Pizza_Port)
Favorite.create(food_name: "Pizza Laguna", likes: 450, restaurant: Pizza_Port)
Favorite.create(food_name: "Sweet Potato Agnolotti", likes: 59, restaurant: Juniper_Ivy)
Favorite.create(food_name: "Braised Squashini", likes: 57, restaurant: Juniper_Ivy)
Favorite.create(food_name: "Mahi Mahi Tostada", likes: 55, restaurant: Juniper_Ivy)
Favorite.create(food_name: "Falafel Plate", likes: 61, restaurant: Meze)
Favorite.create(food_name: "Souvlaki", likes: 60, restaurant: Meze)
Favorite.create(food_name: "Baklava Pancakes", likes: 59, restaurant: Meze)
Favorite.create(food_name: "Tamales", likes: 15, restaurant: Milpas)
Favorite.create(food_name: "Menudo", likes: 13, restaurant: Milpas)
Favorite.create(food_name: "Chorizo con huevo", likes: 9, restaurant: Milpas)
Favorite.create(food_name: "Banana Nut Waffle", likes: 294, restaurant: Waffle_Spot)
Favorite.create(food_name: "Chicken & Waffles", likes: 185, restaurant: Waffle_Spot)
Favorite.create(food_name: "Bacon Waffle & Eggs", likes: 174, restaurant: Waffle_Spot)
Favorite.create(food_name: "Lamp Shepherd's Pie", likes: 243, restaurant: The_Field)
Favorite.create(food_name: "Fish & chips", likes: 197, restaurant: The_Field)
Favorite.create(food_name: "Boxty", likes: 184, restaurant: The_Field)
Favorite.create(food_name: "Cioppino", likes: 142, restaurant: Dockside)
Favorite.create(food_name: "Seared Scallops", likes: 120, restaurant: Dockside)
Favorite.create(food_name: "Sea Bass & Shrimp Ceviche", likes: 106, restaurant: Dockside)
Favorite.create(food_name: "Pappardelle Bolognese", likes: 97, restaurant: Enoteca)
Favorite.create(food_name: "Gnocchi tre gusti", likes: 84, restaurant: Enoteca)
Favorite.create(food_name: "Enoteca Adriano", likes: 79, restaurant: Enoteca)
Favorite.create(food_name: "Local Spiny Lobster", likes: 120, restaurant: TotM)
Favorite.create(food_name: "Ahi Tuna", likes: 60, restaurant: TotM)
Favorite.create(food_name: "Oysters on the Half Shell", likes: 46, restaurant: TotM)

puts "🌱 Seeding complete!"