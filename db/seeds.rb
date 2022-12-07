# Bubbletea.destroy_all


puts "🌱 Seeding spices..."
# Bubbletea.where(id: 6).update(base:"milk tea",topping_1:"tapioca",topping_2:"grass jelly", size:"16")
# Bubbletea.where(id: 7).update(base:"chocolate",topping_1:"boba",topping_2:"lychee jelly", size:"12")
# Bubbletea.where(id: 8).update(base:"peach",topping_1:"boba",topping_2:"coconut jelly", size:"8")
# Bubbletea.where(id: 9).update(base:"coffee",topping_1:"lychee jelly",topping_2:"coconut jelly", size:"8")
# Bubbletea.where(id: 10).update(base:"taro",topping_1:"coconut jelly",topping_2:"mango pearls", size:"8")

# Bubbletea.update(image_url: "https://www.pngfind.com/pngs/m/104-1041358_fresh-milk-oolong-tea-w-boba-fresh-milk.png")
# b2=Bubbletea.create(image_url: "https://www.nicepng.com/png/full/315-3151395_milk-tea-with-pudding-coco-milk-tea-pudding.png")
# b3=Bubbletea.create(image_url: "https://p.kindpng.com/picc/s/730-7308452_milk-tea-matcha-png-transparent-png.png")
# b4=Bubbletea.create(image_url: "https://bobakingusa.com/wp-content/uploads/2020/11/mangotango-400x400.png")
# b5=Bubbletea.create(image_url: "https://748145.smushcdn.com/1388612/wp-content/uploads/2022/10/Pearl-Milk-Tea.png?lossy=1&strip=1&webp=1")

# # Seed your database here
# b1=Bubbletea.create(base: "oolong tea", topping_1: "boba", topping_2: "grass jelly", size: 16  )
# b2=Bubbletea.create(base: 'thai tea', topping_1: "egg pudding", topping_2: "boba", size: 8)
# b3=Bubbletea.create(base: 'matcha latte', topping_1: "coconut jelly", size:12)
# b4=Bubbletea.create(base: 'mango tea', topping_2: "mango pearls", size:16)
# b5=Bubbletea.create(base: 'black milk tea', topping_1: 'lychee jelly', topping_2: "aloe jelly", size: 16)

# puts "Bubbletea Done!"

# puts "Create Customer"
# c1 = Customer.create(name: "Gabriela")
# c2 = Customer.create(name: "Amira")
# c3 = Customer.create(name: 'Jenn')
# c4 = Customer.create(name: 'Keila')
# c5 = Customer.create(name: 'Adam')
# c6 = Customer.create(name: 'Sam')
# c7 = Customer.create(name: 'Marcos')

# puts "Customer Done!"

# puts "Create Order!"
# Order.create(price: 6,bubbletea_id:b1.id,customer_id:c3.id)
# Order.create(price: 8,bubbletea_id:b4.id,customer_id:c2.id)
# Order.create(price: 7,bubbletea_id:b5.id,customer_id:c3.id)
# Order.create(price: 6,bubbletea_id:b3.id,customer_id:c5.id)
# Order.create(price: 9,bubbletea_id:b2.id,customer_id:c6.id)
# Order.create(price: 6,bubbletea_id:b3.id,customer_id:c7.id)

puts "✅ Done seeding!"
