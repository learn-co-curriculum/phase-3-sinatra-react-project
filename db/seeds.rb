puts "🌱 Seeding spices..."

# Seed your database here
p1=Plant.create(name: "Marbled Pothos", description: "beautiful propegation of a 3 year old Marbled Pothos", image: "https://cdn.sanity.io/images/y346iw48/production/8c183ca7349ab0b68bdbe0c6a96b19513ce9c185-1536x1024.jpg?auto=format", likes: 5, user_id:2)
p2=Plant.create(name: "Monstera", description: "beautiful propegation of a 4 year old Monstera", image: "https://leafandpaw.com/wp-content/uploads/2018/02/IMG_7532-997x1024.jpg", likes: 10, user_id:1)
p3=Plant.create(name: "Snake Plant", description: "beautiful propegation of a 1 year old Snake Plant", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzGuAqA7lk6Ep2NQYFJLJteW6OSocoVcSNXg&usqp=CAU", likes: 7, user_id:1)

u1=User.create(first_name:"Spencer", last_name:"Mathews")
u2=User.create(first_name:"John", last_name:"Hayes")
u3=User.create(first_name:"Alexis", last_name:"Montgomery")


puts "✅ Done seeding!"
