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

puts "✅ Done seeding!"
