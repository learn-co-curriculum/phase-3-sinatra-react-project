puts "🌱 Seeding spices..."

# Seed your database here
Post.create(title: "My Ruby project", name: "Lucas", user_id: 1,  genre: "Personal Blog", body: "I love creating new code!")
Post.create(title: "My love for code", name: "Jill", user_id: 3,  genre: "Personal Blog", body: "Coding is my favorite!")
Post.create(title: "Coding with Ruby", name: "Braxton", user_id: 5, genre: "Personal Blog", body: "Don't you just love code!")

Product.create(name: "2015 Ford f-150", description: "Like new 2015 truck", price: 34900)

User.create(name: "Lucas", age: 25)
puts "✅ Done seeding!"