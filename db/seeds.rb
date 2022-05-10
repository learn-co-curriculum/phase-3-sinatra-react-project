require 'faker'

puts "🌱 Seeding spices..."

# Seed your database here

# Restaurants
sinatras_finest = Restaurant.create(name: "Sinatra's Finest")

# Customers
first = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
second = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
third = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
fourth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
fifth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
sixth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
seventh = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
eighth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
ninth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
tenth = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

# Menu Items
MenuItem.create(course: "appetizer", name: "Oysters", ingredients: "Oysters, butter, lemon", price: 15, image_url: "https://media.istockphoto.com/photos/half-dozen-fresh-oysters-are-served-with-lemon-in-bowl-with-plenty-of-picture-id1321303618?b=1&k=20&m=1321303618&s=170667a&w=0&h=c2swJOM6sK8Cc05Iuzh2wK7ica71KkSD7OHl4YmrerI=", restaurant_id: sinatras_finest.id)

# Reviews
Review.create(review_details: "I absolutely loved the food here!", star_rating: 5, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "It was okay", star_rating: 3, customer_id: second.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Will definitely be back", star_rating: 4, customer_id: third.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Wait was way too long", star_rating: 2, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Frank Sinatra literally sang to me", star_rating: 5, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Heaven on Earth??", star_rating: 5, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "The waiter was rude but the food was good", star_rating: 3, customer_id: eighth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Worst food I've ever had", star_rating: 1, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "I went on a lovely date here!", star_rating: 5, customer_id: ninth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "I wish I knew how to cook like this!", star_rating: 4, customer_id: sixth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Fancy but not classy", star_rating: 2, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "The oysters were to die for!", star_rating: 4, customer_id: fifth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "A little loud inside but the outdoor patio is nice", star_rating: 4, customer_id: sixth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Chef is royalty!", star_rating: 5, customer_id: first.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "No flavour", star_rating: 1, customer_id: fourth.id, restaurant_id: sinatras_finest.id)
Review.create(review_details: "Nice atmosphere", star_rating: 3, customer_id: seventh.id, restaurant_id: sinatras_finest.id)

MenuItem.create(course: "dinner", name: "Chiken Parm", price: 14.99, image_url: "https://preppykitchen.com/wp-content/uploads/2018/10/Chicken-Parmesan-Recipe-n.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Risotto", price: 16.99, image_url: "https://poshjournal.com/wp-content/uploads/2021/08/orzo-risotto-recipe-3.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Pizza Pie", price: 13.99, image_url: "https://www.hormelfoods.com/wp-content/uploads/Inspired_20220322_Happy-Little-Plants-Pepperoni-Pizza-Toppings.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "desert", name: "Gelato", price: 9.99, image_url: "https://images.media-allrecipes.com/userphotos/6732586.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Pesto alla Genovese", price: 17.99, image_url: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/0802C73C-3213-4AA6-BD3E-7390A13989FF/Derivates/ff280a78-bfae-46c9-9ea8-c63f5508cde8.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Lasagne", price: 19.99, image_url: "https://3f4c2184e060ce99111b-f8c0985c8cb63a71df5cb7fd729edcab.ssl.cf2.rackcdn.com/media/19227/classiclasagna.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Prosciutto di Parma", price: 22.99, image_url: "https://www.delibusiness.com/wp-content/uploads/2021/11/AdobeStock_327766584-scaled.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Ribollita", price: 14.99, image_url: "https://www.thespruceeats.com/thmb/F0i0xGAKlpW4eN5oXrY6hYV5jyQ=/2667x2000/smart/filters:no_upscale()/ribollita-classic-tuscan-winter-soup-recipe-4105780-c004fb72de164e0a8dfd8e686308ef68.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Tortelli and Ravioli", price: 17.99, image_url: "https://www.the-pasta-project.com/wp-content/uploads/Pumpkin-Tortelli-recipe-from-Mantova-13-640x433.jpg", restaurant_id: sinatras_finest.id)
MenuItem.create(course: "dinner", name: "Panzerotto fritto", price: 14.99, image_url: "https://www.crazymasalafood.com/wp-content/images/2022/02/Panzerotto-fFritto.jpg", restaurant_id: sinatras_finest.id)

puts "✅ Done seeding!"
