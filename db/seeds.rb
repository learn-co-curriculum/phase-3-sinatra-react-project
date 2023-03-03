



puts "🌱 Seeding pets and users..."

# Seed your database here
User.create(username:"person6",password:"person6")
User.create(username:"person7",password:"person7")
User.create(username:"person8",password:"person8")
User.create(username:"person9",password:"person9")
User.create(username:"person0",password:"person0")

Pet.create(name:"pet6",breed:"breed6",image_url:"image6.com",user_id:6)
Pet.create(name:"pet7",breed:"breed7",image_url:"image7.com",user_id:6)
Pet.create(name:"pet8",breed:"breed8",image_url:"image8.com",user_id:6)
Pet.create(name:"pet9",breed:"breed9",image_url:"image9.com",user_id:6)
Pet.create(name:"pet0",breed:"breed0",image_url:"image0.com",user_id:6)
Pet.create(name:"pet11",breed:"breed11",image_url:"image11.com",user_id:7)
Pet.create(name:"pet12",breed:"breed12",image_url:"image12.com",user_id:8)
Pet.create(name:"pet13",breed:"breed13",image_url:"image13.com",user_id:9)
Pet.create(name:"pet14",breed:"breed14",image_url:"image14.com",user_id:0)

puts "✅ Done seeding!"

