puts "🌱 Seeding spices..."

# Seed your database here

puts "✅ Done seeding!"

Post.create(title: "Got into Chilton!", date: "10/05/2000", entry: "I am so happy I got into Chilton!!!")
Post.create(title: "Jk met a boy", date: "10/18/2000", entry: "I met a new kid named Dean and now idk if I want to go to Chilton.")
Post.create(title: "My mom sold her soul to my grandparents", date: "10/20/2000", entry: "Ugh I have to go to my grandparents' house for dinner every Friday because my mom sold her soul to pay my tuition.")


Category.create(feeling: "happy", post_id: 1)
Category.create(feeling: "nervous", post_id: 2)
Category.create(feeling: "angry", post_id: 3)
