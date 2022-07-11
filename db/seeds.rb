puts "🌱 Seeding spices..."

# Seed your database here
Post.create(title: "My Ruby project",  user_id: 3 ,  genre: "Personal Blog", body: "I love creating new code!")
Post.create(title: "My love for code",  user_id: 2,  genre: "Personal Blog", body: "Coding is my favorite!")
Post.create(title: "Coding with Ruby",  user_id: 2 , genre: "Personal Blog", body: "Don't you just love code!")


User.create(name: "Lucas") 
User.create(name: "Hannah")
User.create(name: "Gia")
puts "✅ Done seeding!"