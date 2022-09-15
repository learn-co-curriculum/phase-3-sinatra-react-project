Day.destroy_all
Meal.destroy_all
Item.destroy_all
puts "seeding days"

monday = Day.create(name: "monday")
tuesday = Day.create(name: "tuesday")
wednesday = Day.create(name: "wednesday")
thursday = Day.create(name: "thursday")
friday = Day.create(name: "friday")
saturday = Day.create(name: "saturday")
sunday = Day.create(name: "sunday")
puts "done seeding days"
puts "seeding meals"

meal11 = Meal.create(day_id: monday.id, meal_number: 1)
meal12 = Meal.create(day_id: monday.id, meal_number: 2)
meal12 = Meal.create(day_id: monday.id, meal_number: 3)
meal21 = Meal.create(day_id: tuesday.id, meal_number: 1)
meal22 = Meal.create(day_id: tuesday.id, meal_number: 2)
meal23 = Meal.create(day_id: tuesday.id, meal_number: 3)
meal31 = Meal.create(day_id: wednesday.id, meal_number: 1)
meal32 = Meal.create(day_id: wednesday.id, meal_number: 2)
meal33 = Meal.create(day_id: wednesday.id, meal_number: 3)
meal41 = Meal.create(day_id: thursday.id, meal_number: 1)
meal42 = Meal.create(day_id: thursday.id, meal_number: 2)
meal43 = Meal.create(day_id: thursday.id, meal_number: 3)
meal51 = Meal.create(day_id: friday.id, meal_number: 1)
meal52 = Meal.create(day_id: friday.id, meal_number: 2)
meal53 = Meal.create(day_id: friday.id, meal_number: 3)
meal61 = Meal.create(day_id: saturday.id, meal_number: 1)
meal62 = Meal.create(day_id: saturday.id, meal_number: 2)
meal63 = Meal.create(day_id: saturday.id, meal_number: 3)
meal71 = Meal.create(day_id: sunday.id, meal_number: 1)
meal72 = Meal.create(day_id: sunday.id, meal_number: 2)
meal73 = Meal.create(day_id: sunday.id, meal_number: 3)

puts "done seeding meals"
puts "seeding items"

Item.create(name: "Healthy Banana Oatmeal Pancakes", image: "https://www.thelazydish.com/wp-content/uploads/2020/09/quick-easy-healthy-breakfast-idea-banana-pancakes.jpg", url: "https://www.thelazydish.com/healthy-quick-easy-banana-oatmeal-pancakes-breakfast-recipe/", recipe: "<ol><li>Preheat a skillet on low heat.</li><li>Mix the bananas, eggs and oats together in a blender on low speed.</li><li>Grease your sillet with cooking spray, oil or butter and pour the batter onto your prepared skillet (about 1/6 of the batter for each pancake). The smaller the better, as these pancakes don't hold together quite as well as regular pancakes.</li><li>Allow the pancakes to cook through on one side before flipping. If you are using any mix-ins like walnuts or blueberries, you can kind of push them into the uncooked side of the pancakes before fipping. I don't reccomend mixing them with the batter because they are more likely to fall apart.</li>
<li>Flip and cook the other side until done; repeat for the rest of the batter.</li><li>Serve with syrup, butter, peanut butter or your favorite pancake toppings.</li></ol>", ingredients: "<li>2 ripe bananas</li> <li>2 eggs</li> <li>1 cup oats</li> <li>Mix-ins and toppings of your choice (vanilla, cinnamon, berries, nuts, etc.)</li>", nutrients: "Servings: 6 small pancakes")

Item.create(name: "Sausage and Cheese Breakfast Egg Muffins", image: "https://images.themodernproper.com/billowy-turkey/production/posts/2019/Mexican-Style-Egg-Muffins-11.jpg?w=1200&auto=compress%2Cformat&fit=crop&dm=1599769079&s=fa0c51fa01547464ef877f969b314b4e", url: "https://themodernproper.com/sausage-and-cheese-breakfast-egg-muffins", recipe: "<ol><li>Preheat oven to 350°F.</li><li>In a large mixing bowl, whisk together eggs, milk, chili powder, salt and pepper.</li><li>Spray a 12 cup muffin tin with cooking spray to prevent the egg mixture from sticking.</li><li>Evenly disperse half of the browned sausage and half of the cheese into the prepared muffin cups. Pour the egg mixture into the cups, filling about half way full. Top with remaining sausage, cheese and olives.</li><li>Bake on the center rack for 20-25 minutes.</li><li>Top with cilantro, salsa and a slice of avocado.</li></ol>", ingredients: "<li>12 eggs, beaten</li><li>1/2 cup milk</li><li>2 tsp chili powder</li><li>1 tsp sea salt</li><li>1/2 tsp freshly cracked black pepper</li><li>cooking spray, for muffin tin</li><li>1 lb breakfast sausage cooked and chopped</li><li>2 cups Tillamook Farmstyle Thick Cut Mexican 4 Cheese Blend Shredded Cheese</li><li>1 (4 oz) can sliced olives</li><li>cilantro, minced</li><li>restaurant style salsa</li><li>avocado slices</li>", nutrients: "Serves: 12 | Calories: 232")

Item.create(name: "Cheese & Herb Potato Fans", image: "https://d1yfn1dfres2va.cloudfront.net/005/33/8e/338e20c505e5bbf4b60b1550bea349c3_640m.jpg", url: "https://www.tasteofhome.com/recipes/cheese-herb-potato-fans/", recipe: "<ol><li>Preheat oven to 425°. With a sharp knife, cut each potato crosswise into 1/8-in. slices, leaving slices attached at the bottom; fan potatoes slightly and place in a greased 13x9-in. baking dish. In a small bowl, mix butter, salt and pepper; drizzle over potatoes.
</li><li>Bake, uncovered, 50-55 minutes or until potatoes are tender. In a small bowl, toss cheeses with herbs; sprinkle over potatoes. Bake about 5 minutes longer or until cheese is melted.</li></ol>", ingredients: "<li>8 medium potatoes</li><li>1/2 cup butter, melted</li><li>2 teaspoons salt</li><li>1/2 teaspoon pepper</li><li>2/3 cup shredded cheddar cheese</li><li>1/3 cup shredded Parmesan cheese</li><li>2 tablespoons each minced fresh chives, sage and thyme</li>", nutrients: "Servings: 8 | Calories: 318 | Fat: 15g (10g saturated fat) | Cholesterol: 43mg | Sodium: 797mg | Carbohydrate: 39g (3g sugars, 4g fiber) | Protein: 8g ")

Item.create(name: "Chicken Fried Rice", image: "https://insanelygoodrecipes.com/wp-content/uploads/2019/08/Chicken-Fried-Rice.webp", url: "https://insanelygoodrecipes.com/easy-chicken-fried-rice/", recipe: "<ol><li>Melt butter in a large non stick skillet over medium heat.</li><li>Add onions, peas, and carrots and cook until tender.</li><li>Push the vegetables to one side and pour the beaten eggs on the other side. </li><li>Scramble the eggs until set.</li><li>Mix the eggs and vegetables together.</li><li>Add garlic powder and soy sauce and stir to mix.</li><li>Add the cooked rice and chicken. Mix well.</li><li>You can top it off with green onions and a dash of salt and pepper.</li></ol>", ingredients: "<li>2 tbsp butter</li><li>3 cups cooked white rice (cold)</li><li>1 cup frozen sweet peas</li><li>1/2 cup carrots</li><li>2 eggs (beaten)</li><li>1 small onion, chopped</li><li>2 green onions (chopped)</li><li>1 tsp garlic powder</li><li>2 tbsp soy sauce</li><li>1 pound boneless chicken breast (cooked, chopped into 1/2 inch dices)</li><li>Dash of sea salt and black pepper</li>", nutrients: "Servings: 8")

Item.create(name: "Spaghetti With Garlic and Olive Oil", image: "https://theclevermeal.com/wp-content/uploads/2018/11/IMG_0019-copy-799x1024.jpg", url: "https://theclevermeal.com/spaghetti-garlic-olive-oil/", recipe: "<ol><li>Bring a pot of salted water to the boil and add spaghetti. Cook until al dente: the spaghetti is soft but still has a little bite.</li><li>While the spaghetti is cooking make the sauce: If you don't use dried chili flakes, remove the seeds from the chilies and finely chop. Peel and finely slice the garlic cloves.</li><li>Heat the olive oil gently in a frying pan. Add the garlic and chili and cook gently for a few minutes, or until the garlic is pale gold, which will be enough time for the flavorings to infuse the oil (take care not to burn it!). Stir in chopped parsley.</li><li>Drain the spaghetti still `al dente`, reserve 1/2 cup cooking water.</li><li>Add spaghetti to the frying pan, stir well to coat with the oil, add some starchy cooking water, as much as needed to ensure the pasta is moist and juicy*.</li><li>Cook on medium heat for 30 seconds, stirring a couple of times.</li><li>Sprinkle the spaghetti with extra chopped parsley, and grated parmesan cheese if you don't keep it vegan. Enjoy!</li></ol>", ingredients: "<li>1 lb (450 grams) spaghetti, or other long pasta
<li>1/2 cup (120 ml) extra virgin olive oil</li><li>4-5 garlic cloves, finely sliced</li><li>1 tsp dried chili flakes, or to taste (or 3 fresh chillies)</li><li>1/4 cup fresh parsley, coarsely chopped</li><li>1/4 cup grated parmesan cheese, plus more to serve (optional, if you don't keep it vegan)</li><li>salt, to taste</li>", nutrients: "Servings: 4 | Calories: 693kcal | Carbohydrates: 86g | Protein: 15g | Fat: 32g | Saturated Fat: 5g | Sodium: 41mg | Potassium: 302mg | Fiber: 4g | Sugar: 3g | Vitamin A: 593IU | Vitamin C: 1mg | Calcium: 36mg | Iron: 2mg")

Item.create(name: "Beetroot, hummus & crispy chickpea sub sandwich", image: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/beet-hummus-crispy-chickpeas-subs-b705a73.jpg?resize=960,872?quality=90&webp=true&resize=750,681", url: "https://www.bbcgoodfood.com/recipes/beetroot-hummus-crispy-chickpea-sub-sandwich", ingredients: "<li>300g pack cooked beetroot in water, drained, half sliced</li><li>400g can chickpeas , drained</li><li>3 tbsp vegan pesto</li><li>olive oil</li><li>splash of vinegar (white wine vinegar if you have it)</li><li>2 large ciabatta rolls, sliced in half</li><li>2 large handfuls mixed rocket, watercress & spinach salad</li>", recipe: "<ol><li>Blitz the whole beetroot, ¾ of the chickpeas, 2 tbsp pesto and 1 tbsp oil in a food processor with some seasoning until you have a thick, smooth hummus. Heat the ciabatta following the pack instructions.</li><li>Fry the remaining chickpeas in a little oil until crisp, then set aside. Toss the salad leaves with the remaining pesto and a splash of vinegar. Slice the rolls, then assemble the sandwiches with the hummus, beetroot slices, salad leaves and fried chickpeas.</li></ol>", nutrients: "Servings: 2 | Kcal: 639 | Fat: 22g | Saturated fats: 3g | Carbohydrates: 77g | Sugars: 16g | Fibre: 14g | Protein: 24g | Sodium: 1.6g")

Item.create(name: "Cacio e Pepe (Cheese & Pepper Pasta)", image: "", url: "", ingredients: "<li>200g bucatini or spaghetti</li><li>25g butter</li><li>2 tsp whole black peppercorns, ground, or 1 tsp freshly ground black pepper</li><li>50g pecorino or parmesan, finely grated</li>", recipe: "<ol><li>Cook the pasta for 2 mins less than pack instructions state, in salted boiling water. Meanwhile, melt the butter in a medium frying pan over a low heat, then add the ground black pepper and toast for a few minutes.</li><li>Drain the pasta, keeping 200ml of the pasta water. Tip the pasta and 100ml of the pasta water into the pan with the butter and pepper. Toss briefly, then scatter over the parmesan evenly, but don’t stir – wait for the cheese to melt for 30 seconds, then once melted, toss everything well, and stir together. This prevents the cheese from clumping or going stringy and makes a smooth, shiny sauce. Add a splash more pasta water if you need to, to loosen the sauce and coat the pasta. Serve immediately with a good grating of black pepper.</li></ol>", nutrients: "Servings: 2 | Kcal:
565 | Fat: 19g | Saturated Fat: 12g | Carbohydrates: 75g | Sugars: 3g | Fibre: 4g | Protein: 21g | Sodium: 0.66g")

Item.create(name: "Garlic Brown Sugar Flank Steak With Chimichurri", image: "https://www.howsweeteats.com/wp-content/uploads/2014/01/flank-steak-with-chimichurri-I-howsweeteats.com-5.jpg", url: "https://www.howsweeteats.com/2014/01/garlic-brown-sugar-flank-steak-with-chimichurri/#_a5y_p=1218226", ingredients: "<li>2 pound flank steak, about 1-inch thick</li><li>1/2 teaspoon salt</li><li>1/2 teaspoon pepper</li><li>1/3 cup olive oil</li><li>3 tablespoons brown sugar</li><li>4 garlic cloves, minced</li> <h3>CHIMICHURRI</h3><li>1 cup fresh cilantro</li><li>2/3 cup fresh parsley</li><li>1/4 cup fresh oregano</li><li>2 garlic cloves, minced</li><li>1/4 cup red wine vinegar</li><li>2/3 cup olive oil</li><li>1/2 teaspoon salt</li><li>1/2 teaspoon pepper</li><li>1/4 teaspoon crushed red pepper flakes</li>", recipe: "<ol><li>Add the flank steak to a large baking dish and season it with the salt and pepper. In a bowl, whisk together the olive oil, brown sugar and garlic cloves, then cover the steak with it and place it in the fridge to marinate. I marinate anywhere from 2 hours to overnight.</li><li>When you’re ready to cook the steak, you can grill, broil or pan sear it to your liking. I tend to broil it as I find that easiest. Preheat the broiler in your oven and move the oven rack as close as possible. Place the steak on a broiler pan or baking sheet and broil on each side for about 5 minutes. This will result to a medium to medium-well doneness in my oven.</li></li>Allow the steak to rest for 10 minutes before slicing it thinly against the grain. Serve it immediately with the chimichurri.<li></li></li><li>CHIMICHURRI: Combine the parsley, cilantro, oregano and garlic in a food processor and pulse until small leaves and pieces remain. Add in the vinegar and pulse once more. With the processor going, stream in the olive oil and mix until just combined. Stir in the salt, pepper and red pepper flakes. Taste and season additionally if needed. Store sealed in the fridge for up to a week or so.</li></ol>", nutrients: "Servings: 4")

Item.create(name: "", image: "", url: "", ingredients: "", recipe: "", nutrients: "")

Item.create(name: "", image: "", url: "", ingredients: "", recipe: "", nutrients: "")

puts "done seeding items"
