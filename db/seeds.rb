puts "🌱 Seeding spices..."
    user1=User.create(username:"Titus Nyandoro",email:"kapadokia@mail.com", phone_number:"0743377980", gender:"current timestamp", age:67)
    project1=Project.create(name:"Buildinf a react app", creator:user1.username, desc:"titus knows nothing", timeframe:"current timestamp", status:"on progress", scope:"ruby", approach:"backend first")
    deliverable1=Deliverable.create( name:"Finish Ui",project_id:project1.id, assigned: user1.id)


puts "✅ Done seeding!"
