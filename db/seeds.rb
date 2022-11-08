puts "🌱 Seeding spices..."
    project1=Project.create(name:"titus", creator:"kapadokia", desc:"titus knows nothing", timeframe:"current timestamp", status:"on progress", scope:"ruby", approach:"backend first")
    user1=User.create(username:"Titus Nyandoro", 
        email:"kapadokia@mail.com", 
        phone_number:"titus knows nothing", 
        gender:"current timestamp", 
        age:"on progress")

puts "✅ Done seeding!"
