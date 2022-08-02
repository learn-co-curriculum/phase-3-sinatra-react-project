puts "🌱 Seeding spices..."

# Seed your database here
Dog.create(name: "Axel", breed: "PWD", age: 5, weight: 55)
Dog.create(name: "Dray", breed: "Norwich Terrier", age: 3, weight: 13)
Dog.create(name: "Mugi", breed: "Pomeranian", age: 2, weight: 11)
Dog.create(name: "Clover", breed: "Jindo", age: 3, weight: 40)
Dog.create(name: "Ume", breed: "Corgi", age: 1, weight: 25)
Dog.create(name: "Stella", breed: "Mutt", age: 3, weight: 17)
Dog.create(name: "Bodhi", breed: "Mutt", age: 5, weight: 18)

Supplier.create(name: "Marin Farm", product: "chicken")
Supplier.create(name: "Monterey Fish Market", product: "fish")
Supplier.create(name: "Ducks Unlimited", product: "duck")
Supplier.create(name: "Sonoma Ranch", product: "beef")
Supplier.create(name: "Gualala Ranch", product: "lamb")
Supplier.create(name: "Sutter Creek Farm", product: "pork")
Supplier.create(name: "Judy's Bunnies", product: "rabbit")

Order.create(item: "Chicken", quantity: 10, dog_id: 9, supplier_id: 1 )
Order.create(item: "Rabbit", quantity: 8, dog_id: 10, supplier_id: 7 )
Order.create(item: "Duck", quantity: 5, dog_id: 9, supplier_id: 3 )
Order.create(item: "Fish", quantity: 4, dog_id: 11, supplier_id: 2 )
Order.create(item: "Chicken", quantity: 2, dog_id: 11, supplier_id: 1 )
Order.create(item: "Beef", quantity: 15, dog_id: 12, supplier_id: 4 )
Order.create(item: "Lamb", quantity: 6, dog_id: 15, supplier_id: 5 )
Order.create(item: "Duck", quantity: 3, dog_id: 14, supplier_id: 3 )
Order.create(item: "Fish", quantity: 12, dog_id: 13, supplier_id: 2 )
Order.create(item: "Pork", quantity: 5, dog_id: 13, supplier_id: 6 )
Order.create(item: "Pork", quantity: 4, dog_id: 10, supplier_id: 6 )
Order.create(item: "Chicken", quantity: 7, dog_id: 12, supplier_id: 1 )
Order.create(item: "Duck", quantity: 20, dog_id: 15, supplier_id: 3 )
Order.create(item: "Beef", quantity: 6, dog_id: 14, supplier_id: 4 )
Order.create(item: "Lamb", quantity: 12, dog_id: 12, supplier_id: 5 )
Order.create(item: "Rabbit", quantity: 8, dog_id: 10, supplier_id: 7 )
Order.create(item: "Rabbit", quantity: 4, dog_id: 13, supplier_id: 7 )
Order.create(item: "Chicken", quantity: 5, dog_id: 10, supplier_id: 1 )

puts "✅ Done seeding!"
