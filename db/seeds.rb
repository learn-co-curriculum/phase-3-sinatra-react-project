puts "🌱 Seeding spices..."

<<<<<<< HEAD

=======
# Seed your database here
b1=Bubbletea.create(base: "oolong tea", topping_1: "boba", topping_2: "grass jelly", size: 16  )
b2=Bubbletea.create(base: 'thai tea', topping_1: "egg pudding", topping_2: "boba", size: 8)
b3=Bubbletea.create(base: 'matcha latte', topping_1: "coconut jelly", size:12)
b4=Bubbletea.create(base: 'mango tea', topping_2: "mango pearls", size:16)
b5=Bubbletea.create(base: 'black milk tea', topping_1: 'lychee jelly', topping_2: "aloe jelly", size: 16)

puts "Bubbletea Done!"

puts "Create Customer"
c1 = Customer.create(name: "Gabriela")
c2 = Customer.create(name: "Amira")
c3 = Customer.create(name: 'Jenn')
c4 = Customer.create(name: 'Keila')
c5 = Customer.create(name: 'Adam')
c6 = Customer.create(name: 'Sam')
c7 = Customer.create(name: 'Marcos')

puts "Customer Done!"

puts "Create Order!"
Order.create(price: 6,bubbletea_id:b1.id,customer_id:c3.id)
Order.create(price: 8,bubbletea_id:b4.id,customer_id:c2.id)
Order.create(price: 7,bubbletea_id:b5.id,customer_id:c3.id)
Order.create(price: 6,bubbletea_id:b3.id,customer_id:c5.id)
Order.create(price: 9,bubbletea_id:b2.id,customer_id:c6.id)
Order.create(price: 6,bubbletea_id:b3.id,customer_id:c7.id)
>>>>>>> refs/remotes/origin/main

puts "✅ Done seeding!"
