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

Order.create(item: "Chicken", quantity: 10, dog_id: 9, supplier_id: 1, pickup_date: "9/1/2022" )
Order.create(item: "Rabbit", quantity: 8, dog_id: 10, supplier_id: 7, pickup_date: "9/3/2022" )
Order.create(item: "Duck", quantity: 5, dog_id: 9, supplier_id: 3, pickup_date: "10/1/2022")
Order.create(item: "Fish", quantity: 4, dog_id: 11, supplier_id: 2, pickup_date: "9/8/2022" )
Order.create(item: "Chicken", quantity: 2, dog_id: 11, supplier_id: 1, pickup_date: "9/12/2022" )
Order.create(item: "Beef", quantity: 15, dog_id: 12, supplier_id: 4, pickup_date: "9/4/2022" )
Order.create(item: "Lamb", quantity: 6, dog_id: 15, supplier_id: 5, pickup_date: "9/18/2022" )
Order.create(item: "Duck", quantity: 3, dog_id: 14, supplier_id: 3, pickup_date: "9/19/2022" )
Order.create(item: "Fish", quantity: 12, dog_id: 13, supplier_id: 2, pickup_date: "9/22/2022" )
Order.create(item: "Pork", quantity: 5, dog_id: 13, supplier_id: 6, pickup_date: "10/13/2022" )
Order.create(item: "Pork", quantity: 4, dog_id: 10, supplier_id: 6, pickup_date: "10/6/2022" )
Order.create(item: "Chicken", quantity: 7, dog_id: 12, supplier_id: 1, pickup_date: "10/17/2022" )
Order.create(item: "Duck", quantity: 20, dog_id: 15, supplier_id: 3, pickup_date: "11/2/2022" )
Order.create(item: "Beef", quantity: 6, dog_id: 14, supplier_id: 4, pickup_date: "10/20/2022" )
Order.create(item: "Lamb", quantity: 12, dog_id: 12, supplier_id: 5, pickup_date: "9/30/2022" )
Order.create(item: "Rabbit", quantity: 8, dog_id: 10, supplier_id: 7, pickup_date: "11/9/2022" )
Order.create(item: "Rabbit", quantity: 4, dog_id: 13, supplier_id: 7, pickup_date: "10/29/2022" )
Order.create(item: "Chicken", quantity: 5, dog_id: 10, supplier_id: 1, pickup_date: "12/1/2022" )

puts "✅ Done seeding!"
