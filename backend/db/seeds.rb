puts "Deleting user/recipe/comments/kisses data..."
User.destroy_all
Comment.destroy_all
Recipe.destroy_all

puts "🌱 Seeding spices..."

# User 
puts "Creating users"
user1 = User.create(user_name: "mike123", first_name: "Mike", last_name: "Plisco", email: "mike123@mike.com", password: "mike123", image_URL: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80")

user2 = User.create(user_name: "josh123", first_name: "Josh", last_name: "Kim", email: "josh123@josh.com", password: "josh123", image_URL: "https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80" )

user3= User.create(user_name: "liza123", first_name: "Liza", last_name: "McLain", email: "liza123@liza.com", password: "liza123", image_URL: "https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

user4 = User.create(user_name: "wendy123", first_name: "Wendy", last_name: "Yeung", email: "wendy123@wendy.com", password: "we dy123", image_URL: "https://images.unsplash.com/photo-1556908247-45afb446ed86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

user5 = User.create(user_name: "alex123", first_name: "Alex", last_name: "Smith", email: "alex123@malex.com", password: "alex123", image_URL: "https://images.unsplash.com/photo-1519713880332-91cfe19a59dd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
puts "Done creating users"


# Comments 
puts "Creating comments"
Comment.create(comment: "This recipe turned out so delicious! I added a few extra spices and it really elevated the flavor.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I've made this recipe several times and it never fails to impress. Definitely a crowd-pleaser.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This was my first time making this dish and it exceeded my expectations. So easy and flavorful!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I made a few modifications based on what I had on hand and it still tasted amazing. Thanks for the inspiration!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This recipe was the perfect comfort food on a cold day. I will definitely be making it again.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I love how quick and easy this recipe was to make. Perfect for busy weeknights.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "The flavors in this dish were spot on. I can't wait to make it again.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I was looking for a healthier version of this dish and this recipe fit the bill. So tasty!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I've never been a fan of these ingredients typically, but this recipe changed my mind. It added such a unique flavor to the dish.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This recipe was a hit at my dinner party. Everyone asked for the recipe.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I love how versatile this recipe is. I can see myself making it with different ingredients in the future.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This dish came together so beautifully. The presentation was almost as good as the taste.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I was skeptical about the combination of flavors, but they worked so well together. This recipe is a winner!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I wasn't sure if this recipe would be filling enough, but it was perfect. I was satisfied but not overly full.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This recipe was a great way to use up leftovers. So glad I stumbled upon it!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I never would have thought to put these ingredients together, but it worked so well. Thanks for the creative recipe!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This recipe was the perfect balance of sweet and savory. I will definitely be making it again.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I was hesitant to try this recipe because I'm not a big fan of [ingredient], but I'm so glad I did. It was delicious!", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "I made this recipe for a potluck and it was a huge hit. So easy to transport and serve.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
Comment.create(comment: "This recipe was the perfect balance of healthy and indulgent. I felt good about what I was eating without sacrificing taste.", user_id: User.all.sample.id, #recipe_id: Recipe.all.sample.id
)
puts "Done creating comments"

# kisses 
puts "Creating kisses"
100.times do
    Kiss.create(user_id: User.all.sample.id #recipe_id: Recipe.all.sample.id
)
end

puts "Done creating kisses"


# Recipes 
Recipe.create(
    image_URL: "https://www.gimmesomeoven.com/wp-content/uploads/2012/08/The-Best-Guacamole-Recipe.jpg", 
    title: "Guacamole", 
    ingredients: " 4 avocados, 2 limes, 2 garlic cloves, 1 jalapeno, 1 red onion, salt, pepper", 
    steps:"Mash the avocados in a bowl. Chop the red onion finely. Chop the jalapenos finely; de-seed for less heat, if desired. Mince garlic. Combine everything in the bowl. Add lime juice, salt, pepper to taste. Chill for 1 hour. Serve with tortilla chips! " , 
    cuisine: "Mexican" , 
    time: 20, 
    difficulty: 'easy', 
    user_id: user1.id
    )
Recipe.create(
    image_URL: "https://thedeliciousspoon.com/wp-content/uploads/2020/03/Greek-Pasta-Salad-Recipe-Blog-Post-6-500x500.jpg ", 
    title: " Greek Pasta Salad", 
    ingredients: " 1 box of rotini pasta (or other pasta shape of your choice), 1/2 red onion, 1 red pepper, 2 cups cherry tomatoes, 1/2 cup crumbled feta, 1 cucumber, 2 garlic cloves, olive oil, 2-3 lemons, 1/4 cup parsley, oregeno, salt, pepper", 
    steps: " Cook the pasta, drain, rinse with cold water until pasta is cooled, set aside. Finely chop onion, pepper, cucumber, tomatoes. Mince the garlic. Combine with pasta. Add feta. Add olive oil, lemon juice, lemon zest, parsley, oregeno, salt, pepper to taste. Chill for 2 hours for better tase. Serve cold", 
    cuisine: " Greek ", 
    time: 30, 
    difficulty: "moderate", 
    user_id: user1.id
    )

Recipe.create(
    image_URL: " https://www.allrecipes.com/thmb/kIu4UD4ECbNxbPCIG9nUQ9gZP-k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/125434-GrilledCheeseoftheGods-mfs-1x1-067-7eb581d856d246389aa3c169b196046f.jpg", 
    title: " Grilled Cheese", 
    ingredients: " 4 slices of bread, 4 TBS butter divided, 2-4 slices cheese of your choice", 
    steps: " Preheat skillet over medium heat. Butter one side of a slice of bread with 1 TBS of butter. Place bread butter-side down in the heated skillet. Add 1-2 slices of cheese. Butter second slice of bread with 1 TBS of butter and place it on top of the cheese butter-side up. Reduce heat to medium-low. Cook until light browned on one side. Flip and continue cooking until cheese is melted. Repeat with remaining ingredients for second grilled cheese.", 
    cuisine: "American", 
    time: 15, 
    difficulty: "easy", 
    user_id: user1.id
    )

Recipe.create(
    image_URL: " https://assets.bonappetit.com/photos/58a34e1df12ac6e639bf24ae/5:7/w_2004,h_2806,c_limit/argentinian-beef-empanadas.jpg", 
    title: " Empanadas", 
    ingredients: " 1 lb ground beef, 1 onion, chopped, 1 red bell pepper-chopped, 3 cloves garlic-minced, 2 tablespoons olive oil, 2 teaspoons ground cumin, 1 teaspoon paprika, 1/2 teaspoon dried oregano, Salt and pepper to taste, 1 package refrigerated pie crusts (2 crusts), 1 egg,-beaten", 
    steps: " Preheat the oven to 375°F (190°C). In a large skillet, heat the olive oil over medium heat. Add the onion and red bell pepper and cook until softened, about 5 minutes. Add the garlic and cook for another minute. Add the ground beef and cook until browned, breaking it up into small pieces with a spoon. Add the cumin, paprika, oregano, salt, and pepper to the skillet and stir to combine. Remove the skillet from the heat and let the mixture cool for a few minutes. Unroll the refrigerated pie crusts and use a 3-inch cookie cutter to cut out circles from the dough. Spoon about 1 tablespoon of the beef mixture into the center of each circle. Fold the dough over the filling to create a half-circle shape, and crimp the edges together with a fork to seal. Brush the tops of the empanadas with the beaten egg. Bake the empanadas on a baking sheet for 20-25 minutes, or until golden brown. Serve warm and enjoy!", 
    cuisine: " Spanish", 
    time: 70, 
    difficulty: " hard", 
    user_id: user1.id
    )

Recipe.create(
    image_URL: " https://cafedelites.com/wp-content/uploads/2018/07/pad-thai-6.jpg", 
    title: " Pad Thai", 
    ingredients: " rice noodles, shrimp, tofu, bean sprouts, egg, green onions, garlic, peanuts, lime", 
    steps: " Soak noodles in warm water for 15 minutes. Cook shrimp in a pan Add tofu, garlic, and egg to the pan. Add noodles and bean sprouts to the pan. Serve with peanuts, green onions, and lime juice", 
    cuisine: " Thai", 
    time: 30, 
    difficulty: "moderate ", 
    user_id: user2.id 
    )

Recipe.create(
    image_URL: " https://www.budgetbytes.com/wp-content/uploads/2017/12/Kimchi-Fried-Rice-dressed.jpg", 
    title: " Kimchi Fried Rice", 
    ingredients: " cooked rice, kimchi, bacon, onion, garlic, sesame oil, soy sauce", 
    steps: " Cook bacon in a pan. Add onion and garlic to the pan. Add kimchi and cooked rice to the pan. Stir in sesame oil and soy sauce", 
    cuisine: " Korean", 
    time: 20 , 
    difficulty: "easy ", 
    user_id: user2.id
    )

Recipe.create(
    image_URL: " https://cafedelites.com/wp-content/uploads/2018/02/Easy-Teriyaki-Chicken-IMAGE-30.jpg ", 
    title: " Chicken Teriyaki ", 
    ingredients: " chicken breast, soy sauce, mirin, sugar, garlic, cornstarch", 
    steps: " Mix soy sauce, mirin, sugar, and garlic in a bowl. Coat chicken with cornstarch. Cook chicken in a pan. Add sauce to the pan and cook until thickened", 
    cuisine: "Japanese", 
    time: 30, 
    difficulty: "easy ", 
    user_id: user2.id
    )
Recipe.create(
    image_URL: "https://shuangyskitchensink.com/wp-content/uploads/2020/10/Beef-and-Broccoli-Stir-Fry-1-1-819x1024.jpg ", 
    title: "Beef and Broccoli Stir Fry ", 
    ingredients: " beef sirloin, broccoli, soy sauce, hoisin sauce, cornstarch, garlic, ginger", 
    steps: " Cut beef into thin slices. Mix soy sauce, hoisin sauce, and cornstarch in a bowl. Cook beef in a pan with garlic and ginger.  Add broccoli to the pan. Add sauce to the pan and cook until thickened", 
    cuisine: "Chinese ", 
    time: 20, 
    difficulty: " moderate ", 
    user_id: user2.id
    )

Recipe.create(
    image_URL: "https://www.justonecookbook.com/wp-content/uploads/2022/06/Miso-Soup-8297-I-500x500.jpg ", 
    title: " Miso Soup", 
    ingredients: " miso paste, dashi stock, tofu, green onions", 
    steps: "Bring dashi stock to a boil in a pot. Add miso paste to the pot and stir until dissolved . Add tofu and green onions to the pot ", 
    cuisine: " Japanese", 
    time: 10, 
    difficulty: "easy", 
    user_id: user2.id
    )  

Recipe.create(
    image_URL: " https://thecozycook.com/wp-content/uploads/2022/08/Chicken-Parmesan-Recipe-1.jpg", 
    title: " Chicken Parm", 
    ingredients: "4 boneless chicken breasts, 1 cup all-purpose flour, 3 large eggs, 2 cups seasoned Italian breadcrumbs, 1 cup grated Parmesan cheese, 1 1/2 cups marinara sauce, 1 1/2 shredded mozzarella cheese, 1 1/2 cups shredded mozzarella cheese, 1/4 cup chopped fresh basil leaves, salt & pepper, Olive oil ", 
    steps: " Preheat the oven to 400°F.

    Cut the chicken breasts in half crosswise to make them thinner. Season with salt and pepper.
    
    Place the flour in a shallow dish. In another shallow dish, beat the eggs. In a third shallow dish, mix together the breadcrumbs and Parmesan cheese.
    
    Dredge each piece of chicken in the flour, shaking off any excess. Dip the chicken in the beaten eggs, then coat in the breadcrumb mixture, pressing the breadcrumbs onto the chicken to adhere.
    
    Heat 1/4 cup of olive oil in a large skillet over medium heat. Add the breaded chicken and cook until golden brown and crispy, about 2-3 minutes per side.
    
    Spread 1/2 cup of marinara sauce on the bottom of a 9x13 inch baking dish. Place the cooked chicken on top of the sauce. Spoon the remaining sauce over the chicken.
    
    Sprinkle the shredded mozzarella cheese over the top of the chicken and sauce.
    
    Bake the chicken for 25-30 minutes or until the cheese is melted and bubbly and the chicken is cooked through.
    
    Remove the chicken from the oven and let it cool for a few minutes. Sprinkle with chopped fresh basil leaves before serving.", 
    cuisine: " Italian", 
    time: 60, 
    difficulty: "hard ", 
    user_id: user3.id
    )  
Recipe.create(
    image_URL: "https://cdn.momsdish.com/wp-content/uploads/2019/10/Beef-Lo-Mein-Recipe-10-scaled.jpg", 
    title: "Beef Lo Mein ", 
    ingredients: " 8 oz. lo mein noodles, 1 lb. flank steak-sliced thinly against the grain,
    2 tbsp. vegetable oil divided, 1 large onion sliced, 1 red bell pepper sliced, 1 cup sliced mushrooms, 3 cloves garlic minced, 1 tbsp. grated fresh ginger, 3 cups chopped bok choy, 1/4 cup oyster sauce, 2 tbsp. soy sauce, 1 tbsp. cornstarch, 1/4 cup beef broth, Salt and pepper", 
    steps: " Cook the lo mein noodles according to package instructions until they are al dente. Drain and set aside.

    Season the sliced flank steak with salt and pepper. Heat 1 tablespoon of vegetable oil in a wok or large skillet over high heat. Add the sliced steak and stir-fry until browned, about 3-4 minutes. Remove the beef from the wok and set aside.
    
    Add the remaining 1 tablespoon of vegetable oil to the wok. Add the sliced onion, red bell pepper, and sliced mushrooms. Stir-fry for 2-3 minutes until the vegetables are tender.", 
    cuisine: "Chinese", 
    time: 45, 
    difficulty: "moderate", 
    user_id: user3.id
    )  
Recipe.create(
    image_URL: " https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimg1.cookinglight.timeinc.net%2Fsites%2Fdefault%2Ffiles%2Fstyles%2Fmedium_2x%2Fpublic%2F1519665233%2Fslow-cooker-carnitas-tacos-ck-1804p38.jpg%3Fitok%3DKew1JNyq", 
    title: " Carnitas Tacos", 
    ingredients: " 3 lbs. boneless pork shoulder-cut into 2-inch cubes, 2 tbsp. vegetable oil, 1 large onion-chopped, 6 cloves garlic-minced, 2 tbsp. ground cumin, 1 tbsp. dried oregano, 1 tsp. smoked paprika, 2 bay leaves, 1 orange-cut in half, 1 lime-cut in half, Salt and pepper, 24 small corn tortillas, Fresh cilantro leaves, chopped onion, and sliced avocado-for serving", 
    steps: " Preheat the oven to 300°F.

    Heat the vegetable oil in a large Dutch oven or heavy pot over medium-high heat. Add the pork cubes and cook until browned on all sides, about 10 minutes.
    
    Add the chopped onion and minced garlic to the pot and cook until the onion is softened, about 5 minutes.
    
    Add the ground cumin, dried oregano, smoked paprika, bay leaves, and a generous pinch of salt and pepper to the pot. Stir to coat the pork and vegetables in the spices.
    
    Squeeze the juice of the orange and lime over the top of the pork. Add the squeezed fruit halves to the pot as well.
    
    Pour enough water over the top of the pork to cover it by about 1 inch.
    
    Bring the liquid to a simmer, then cover the pot and transfer it to the oven.
    
    Bake the pork for 3-4 hours, or until it is very tender and easily shreds with a fork.
    
    Remove the pot from the oven and discard the fruit halves and bay leaves. Use a slotted spoon to remove the pork from the pot and transfer it to a large bowl. Use two forks to shred the pork.
    
    Preheat the broiler.
    
    Line a baking sheet with foil. Arrange the corn tortillas on the baking sheet and place them under the broiler for 1-2 minutes until they are lightly charred.
    
    To assemble the tacos, place some of the shredded pork on each tortilla. Top with fresh cilantro leaves, chopped onion, and sliced avocado.
    
    Serve hot and enjoy!", 
    cuisine: "Mexican ", 
    time: 240, 
    difficulty: "hard", 
    user_id: user3.id
    )  
Recipe.create(
    image_URL: "https://www.recipegirl.com/wp-content/uploads/2008/11/Winter-Holiday-Sangria-2.jpg ", 
    title: " Red Wine Sangria", 
    ingredients: " 2 bottles of dry red wine (750 ml each), 1 cup brandy, 1/2 cup triple sec, 1/2 cup fresh orange juice, 1/4 cup fresh lime juice, 1/4 cup honey, 1 cinnamon stick, 2 oranges-sliced, 2 limes-sliced, 2 lemons-sliced, 2 apples-cored and sliced, 1 cup fresh raspberries, 1 cup fresh blackberries, 1/2 cup fresh strawberries-sliced, Club soda or sparkling water-for serving, Ice cubes", 
    steps: " In a large pitcher or punch bowl, combine the red wine, brandy, triple sec, orange juice, lime juice, and honey. Stir until the honey is dissolved.

    Add the cinnamon stick, sliced oranges, limes, and lemons to the pitcher. Stir to combine.
    
    Add the sliced apples, raspberries, blackberries, and sliced strawberries to the pitcher. Stir gently to combine.
    
    Cover the pitcher and refrigerate for at least 4 hours, or up to 24 hours, to allow the flavors to meld together.
    
    To serve, fill glasses with ice cubes. Ladle the sangria into the glasses, making sure to include some of the fruit in each serving.
    
    Top each glass with a splash of club soda or sparkling water, if desired.
    
    Serve chilled and enjoy", 
    cuisine: " Spanish", 
    time: 240, 
    difficulty: " hard", 
    user_id: user3.id
    )  
Recipe.create(
    image_URL: "https://www.fifteenspatulas.com/wp-content/uploads/2012/03/Baklava-Fifteen-Spatulas-11.jpg ", 
    title: " Baklava", 
    ingredients: "1 lb. phyllo dough, thawed if frozen
    1 1/2 cups unsalted butter, melted
    2 cups finely chopped walnuts
    1/2 cup granulated sugar
    1 tbsp. ground cinnamon
    1/2 tsp. ground cloves
    1 cup water
    1 cup granulated sugar
    1/2 cup honey
    1 cinnamon stick ", 
    steps: " Preheat the oven to 350°F.

    In a medium bowl, mix together the chopped walnuts, 1/2 cup granulated sugar, ground cinnamon, and ground cloves.
    
    Brush a 9x13 inch baking dish with some of the melted butter.
    
    Unroll the phyllo dough and cut it to fit the size of the baking dish. Cover the phyllo dough with a damp cloth to keep it from drying out while you work.
    
    Lay one sheet of phyllo dough in the bottom of the baking dish. Brush the phyllo dough with melted butter.
    
    Repeat the process with 7 more sheets of phyllo dough, brushing each sheet with melted butter.
    
    Sprinkle 1/3 of the nut mixture over the top of the phyllo dough.
    
    Add 4 more sheets of phyllo dough, brushing each sheet with melted butter.
    
    Sprinkle another 1/3 of the nut mixture over the top of the phyllo dough.
    
    Add 4 more sheets of phyllo dough, brushing each sheet with melted butter.
    
    Sprinkle the remaining 1/3 of the nut mixture over the top of the phyllo dough.
    
    Add 8 more sheets of phyllo dough, brushing each sheet with melted butter.
    
    Cut the baklava into diamond shapes with a sharp knife.
    
    Bake the baklava for 45-50 minutes, or until it is golden brown.
    
    While the baklava is baking, make the syrup. In a small saucepan, combine the water, 1 cup granulated sugar, honey, and cinnamon stick. Bring the mixture to a boil, then reduce the heat and simmer for 10-15 minutes until the syrup has thickened slightly.
    
    Remove the cinnamon stick from the syrup.
    
    When the baklava is finished baking, remove it from the oven and immediately pour the hot syrup over the top of the baklava.
    
    Let the baklava cool to room temperature before serving. ", 
    cuisine: " Greek", 
    time: 75, 
    difficulty: "easy", 
    user_id: user3.id
    )

Recipe.create(
    image_URL: " http://bit.ly/3YujMpz", 
    title: " Earl Grey Pie ", 
    ingredients: " 100 grams milk, 45 grams egg yolk, 80 gram sugar, 2 grams of pan gelatin, 200 grams of heavy cream, 10 bags of earl grey ", 
    steps: " Weigh all ingredients in separate bowl, add tea bags to hot milk and brew it for 10 minutes and squeeze all milk out. Add egg and sugar in a bowl. Reheat heated milk for 1 min and slowly pour just small amount of warm milk tea into egg mixture while quickly mixing. Sift into pot, turn on heat and stir constantly until lightly thickens. Add gelatin mix. Whip cream to 100% until firm and slowly mix the earl grey mixture into whip cream. ", 
    cuisine: " American", 
    time: 60, 
    difficulty: "hard ", 
    user_id: user4.id
    )  
Recipe.create(
    image_URL: " http://bit.ly/3E8k0KO", 
    title: " Daikon Radish Pickle ", 
    ingredients: " 2 Daiko radishs, 100 grams vinegar, 100 grams sugar ", 
    steps: "Chop daikon radish into smal pieces, add sugar and vinegar ", 
    cuisine: "Korean", 
    time: 30, 
    difficulty: "easy", 
    user_id: user4.id
    )  
Recipe.create(
    image_URL: "http://bit.ly/3Ipw3pI ", 
    title: " Chicken Spicy Galbi ", 
    ingredients: " 1 lb boneless, skinless chicken thighs, 1/2 cup gochujang (Korean red pepper paste), 1/4 cup gochugaru (Korean red pepper flakes), 2 tbsp soy sauce, 2 tbsp rice wine (or mirin), 2 tbsp brown sugar, 1 tbsp minced garlic, 1 tbsp minced ginger, 1 onion, 1 sweet potato, 1 cup cabbage, 1 cup scallions, 2 tbsp vegetable oil, sesame seeds and sliced green onions (for garnish).", 
    steps: " Combine marinade ingredients, add chicken and marinate, stir-fry onion and sweet potato, add chicken and marinade, stir-fry until chicken is cooked through, add cabbage and scallions, stir-fry until vegetables are tender, garnish with sesame seeds and green onions, serve with rice.", 
    cuisine: " Korean", 
    time: 60, 
    difficulty: "moderate ", 
    user_id: user4.id
    )  

Recipe.create(
    image_URL: " http://bit.ly/3jPmuXG", 
    title: " coconut custard pie ", 
    ingredients: " 1 egg white, 2 whole egg, 2 cups of coconut milk, 1 cup of heavy cream, 1/2 cup of sugar, 2 tbsp of starch, 1 pinch of salt, 1  tsp of vanilla extract  ", 
    steps: "Weigh all ingredients in separate containers. Mix egg, sugar and vanilla extract in large bowl. Add salt and starch and mix extremely well.Heat half &amp; half in ceramic bowl in microwave for around 1 min. Until warm/hot. Do not boil.Slowly pour just a small amount (about 1/8 cup) of warm half &amp; half into egg mixture while quickly mixing. Mix well before slowly pouring rest of half &amp; half while mixing quickly. Sift into pot, turn on heat to ‘10’, and constantly stir until mixture starts to thicken. Add coconut milk and stir. Let cool, and transfer to plastic container. ", 
    cuisine: "Dessert", 
    time: 60, 
    difficulty: "hard", 
    user_id: user4.id
    )  

Recipe.create(
    image_URL: " http://bit.ly/3YR6fIc", 
    title: " Lemon Curd Pie ", 
    ingredients: " 100 grams of lemon juice, 100 grams water, 300 grams of egg, 200 grams of sugar, 100 grams of butter, 5 egg yolk ", 
    steps: "Weigh all ingredients in separate containers. Cut butter into large cubes. Mix all eggs and sugar in large bowl. Add water and lemon juice and mix well. Add lemon zest and mix. Sift mixture into pot. Put on stove and raise temp to ‘11’. Stir constantly for up to 20 min until mixture thickens. Add lemon flavoring and mix. Add butter and mix. Let cool and store in large, clean sauce bottle. Label name and date. ", 
    cuisine: " Dessert", 
    time: 60, 
    difficulty: "hard", 
    user_id: user4.id
    )  
    
    
    

puts "Creating Recipes"















puts "Done Seeding recipes"

puts "✅ Done seeding!"
