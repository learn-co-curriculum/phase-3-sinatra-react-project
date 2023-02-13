puts "Deleting user/recipe/comments/kisses data..."
User.destroy_all

puts "🌱 Seeding spices..."

puts "Creating users"
User.create(user_name: "mike123", first_name: "Mike", last_name: "Plisco", email: "mike123@mike.com", password: "mike123", image_URL: "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80")

User.create(user_name: "josh123", first_name: "Josh", last_name: "Kim", email: "josh123@josh.com", password: "josh123", image_URL: "https://images.unsplash.com/photo-1514222709107-a180c68d72b4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80" )

User.create(user_name: "liza123", first_name: "Liza", last_name: "McLain", email: "liza123@liza.com", password: "liza123", image_URL: "https://images.unsplash.com/photo-1664575602554-2087b04935a5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

User.create(user_name: "wendy123", first_name: "Wendy", last_name: "Yeung", email: "wendy123@wendy.com", password: "we dy123", image_URL: "https://images.unsplash.com/photo-1556908247-45afb446ed86?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")

User.create(user_name: "alex123", first_name: "Alex", last_name: "Smith", email: "alex123@malex.com", password: "alex123", image_URL: "https://images.unsplash.com/photo-1519713880332-91cfe19a59dd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
puts "Done creating users"

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

puts "Creating kisses"
100.times do
    Kiss.create(user_id: User.all.sample.id #recipe_id: Recipe.all.sample.id
)
end

puts "Done creating kisses"

puts "✅ Done seeding!"
