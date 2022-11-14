puts "🌱 Seeding spices..."

#Review
Review.create(username: "Amy Smith", date: "11/20/2020", rating: 3, review: "Getting 2 soft serve vanilla cones for my mother and I'm having for dinner tonight. Drive-thru taken. I went in right after 10 and was told they dont start serving soft serve until 10:30. I waited until in the parking lot less than 30 minutes and went back in line and ordered again and the worker said they aren't serving soft serve and I said I was just here 30 minutes ago and was told it would be ready at 10:30am. Then the worker said okay and I guess they magically had it again. Hmm...anyways, I paid for it and it was handed over. Definitely not good service, but the soft serve was good!", restaurant: McDonalds)

Review.create(username: "Camille Jones", date: "10/5/2021", rating: 5, review: "Very good breakfast items. We got the French toast and the shrimp and grits and the eggs benedict. I highly recommend this place and the staff was very attentive.", restaurant: Snooze)

Review.create(username: "Camille Jones", date: "07/25/2022", rating: 5, review: "Created this account just to write this review because the service was EXCEPTIONAL :) Ended up getting seated half an hour later than the expected eta they gave us, but we understand it gets busy and expected it. However, we were surprised at how nice and accommodating the manager was. We honestly weren't bothered by the wait, but she was so generous and gave us the cucumber appetizer on the house and we appreciate her for taking the time and effort on doing something out of their way. Also, it was absolutely on my end, but I miscommunicated something with our server, Hannah. It was totally my fault, but she was VERY nice and accommodating towards dealing with my mistakes and everything worked out in the end. Accidentally ordered a couple of extra stuff, but tbh I'm just excited I can eat more DTF for later. I just want to thank her for handling our situation really well :^) Can't forget to mention how yummy everything was. I've been here a bunch of times, but it was the first for the rest of my family and they allied LOVED it. We are very excited to go back again !", restaurant: Din_Tai)

Review.create(username: "John Roberts", date: "06/06/2022", rating: 5, review: "Best ramen place to go to Would definetoy recommend. I go here very often. All the options are good", restaurant: Tajima)

Review.create(username: "Himesh Chandra", date: "03/10/2022", rating: 5, review: "Food was sooooo delicious!! Service was awesome, fast and efficient. Ambiance was nice and friendly, overall a very cute and cozy place to drink delicious coffee and have a delicious meal.", restaurant: Cote_Dazur_Restaurant)

#Favorite
Favorite.create(food_name: "McChicken", likes: 200, restaurant: McDonalds)
Favorite.create(food_name: "Caramel Frappe", likes: 178, restaurant: McDonalds)
Favorite.create(food_name: "French Fries", likes: 177, restaurant: McDonalds)
Favorite.create(food_name: "Smashed Avacado Benny", likes:500, restaurant: Snooze)
Favorite.create(food_name: "Tofu Scramble ", likes: 488, restaurant: Snooze)
Favorite.create(food_name: "OMG! French Toast", likes: 435, restaurant: Snooze)
Favorite.create(food_name: "Xiaolongbao", likes: 755, restaurant: Din_Tai)
Favorite.create(food_name: "Sweet & Sour Pork Baby Back Ribs", likes: 435, restaurant: Din_Tai)
Favorite.create(food_name: "House Beef Soup (Steamed) in a white bowlSteamed Soup with Bone-in Beef Short Ribs", likes: 435, restaurant: Din_Tai)
Favorite.create(food_name: "SPICY SALMON POKE BOWL", likes: 566, restaurant: Tajima)
Favorite.create(food_name: "CHICKEN CHASHU FRIED RICE", likes: 566, restaurant: Tajima)
Favorite.create(food_name: "VEGETARIAN FRIED RICE", likes: 566, restaurant: Tajima)
Favorite.create(food_name: "French Toast", likes:338, restaurant: Cote_Dazur_Restaurant)
Favorite.create(food_name: "Salmon Benedict", likes:237 , restaurant: Cote_Dazur_Restaurant)
Favorite.create(food_name: "Iced Caramel Coffee", likes:100, restaurant: Cote_Dazur_Restaurant)




#Restaurant
McDonalds = Restaurant.create(name: "McDonald's", location: "1280 Park Blvd, San Diego, CA 92101", description: "McDonald's Corporation is an American multinational fast food chain and real estate company, founded in 1940 as a restaurant operated by Richard and Maurice McDonald, in San Bernardino, California, United States.", cuisine: "Fast Food", website: "https://www.mcdonalds.com/us/en-us/location/CA/SAN-DIEGO/1280-12TH-ST/3181.html?cid=RF:YXT:GMB::Clicks", menu: "https://www.mcdonalds.com/us/en-us/full-menu.html", price: "$")

Snooze = Restaurant.create(name: "Snooze, an A.M. Eatery", location: "3940 5th Ave San Diego, CA 92103", description: "Most breakfast & brunch restaurants start with the same script: eggs, batter, coffee & a big ol' griddle. We've found scripts are a lot like pancakes, they're best when flipped, so we're always looking to turn the best breakfast classics upside-down & on their side. Stop by for delicious pancakes, french toast, benedicts, breakfast burritos, oatmeal, breakfast sandwiches, bacon & more. From paleo to vegetarian & vegan or dairy free & gluten free friendly, we'll happily accommodate food allergies & diets. We want each morning to feel like your weekend & happy hour rolled into one, so our restaurants feature a full bar with alcoholic beverages. From mimosas to bloody marys, margaritas & local craft beers, we've got cocktails & brews covered.", cuisine: "Breakfast", website: "https://www.snoozeeatery.com", menu: "https://www.snoozeeatery.com/menu/", price: "$$")

Din_Tai = Restaurant.create(name: "Din Tai Fung", location: "4301 La Jolla Village DrBldg P Unit 2000 San Diego, CA 92122", description: " Din Tai Fung is a world renowned Taiwanese restaurant (now chain) that specializes in soup dumplings and noodles. The restaurant has been awarded the Michelin star 5 times, and is recognised as one of the best dim sum eateries in the world. Their signature dish, xiaolongbao is a must try.", cuisine: "Tawinese", website: "https://dintaifungusa.com", menu: "https://dintaifungusa.com/us/menu.html",price: "$$")

Tajima = Restaurant.create(name: "Tajima Ramen House Restaurant", location: "4681 Convoy Ste I San Diego, CA 92111", description: "Tajima offers one of the widest selections of Japanese cuisine available at affordable prices, to satisfy the unique tastes and desires of everyone in your party.", cuisine: "Japanese", website: "https://tajimaramen.com/tajima-convoy/", menu: "https://tajimaramen.com/tajima-convoy/", price: "$$")

Cote_Dazur_Restaurant = Restaurant.create(name: "Cote D'azur Restaurant", location: "8935 Towne Centre Dr Ste 110 San Diego, CA 92122", description: "At Cote d'Azur Restaurant we take pride in serving only the best authentic French cuisine to the people of the San Diego area. Our cafe and restaurant is the perfect spot for breakfast, lunch, or dinner. Our breakfast menu includes bagels, omelettes, and crepes. Our lunch and dinner menus have a variety of tasty soups, sandwiches, and pastas. Stop by Cote d'Azur Restaurant for a taste of authentic French favorites!", cuisine: "French", website: "https://www.cafecotedazur.com", menu: "https://www.cafecotedazur.com/full-menu", price: "$$")

