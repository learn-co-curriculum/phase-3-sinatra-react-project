require 'faker'
puts "🌱 Seeding categories..."

c1 = Category.create(name: 'Drinks')
c2 = Category.create(name: 'Appetizers')
c3 = Category.create(name: 'Entrees')
c4 = Category.create(name: 'Desserts')

puts "🌱 Seeding foods..."

Food.create(name: 'albarino', price: 12, description: 'crisp, light body, floral', category_id: c1.id)
Food.create(name: 'chardonnay', price: 14, description: 'buttery, medium body, nutty', category_id: c1.id)
Food.create(name: 'beaujoleais', price: 15, description: 'ripe cherry, medium body, slightly earthy', category_id: c1.id)
Food.create(name: 'cabernet blend', price: 17, description: 'dark berries, full body, fruit forward', category_id: c1.id)
Food.create(name: 'lager beer', price: 6, description: 'rotating selection', category_id: c1.id)
Food.create(name: 'sake', price: 12, description: 'rotating selection', category_id: c1.id)
Food.create(name: 'seaweed salad', price: 6, description: 'soy sauce, mirin, sesame', category_id: c2.id)
Food.create(name: 'tuna tataki', price: 16, description: 'yuzu, ginger, agave-soy sauce', category_id: c2.id)
Food.create(name: 'yellowtail sashimi', price: 19, description: 'serrano pepper, cilantro', category_id: c2.id)
Food.create(name: 'octopus ceviche', price: 19, description: 'sea salt, yuzu', category_id: c2.id)
Food.create(name: 'stuffed tomato', price: 14, description: 'crab, shrip, salmon', category_id: c2.id)
Food.create(name: 'cherry blossom', price: 12, description: 'crab, avocado, unagi sauce', category_id: c2.id)
Food.create(name: 'black cod', price: 21, description: 'miso marinate, black rice, seasonal veggies', category_id: c3.id)
Food.create(name: 'tonkatsu ramen', price: 15, description: 'breaded pork cutlets, spicy miso, nori', category_id: c3.id)
Food.create(name: 'teriyaki filet', price: 24, description: 'beef filet, carrot, yuzu-ginger relish', category_id: c3.id)
Food.create(name: 'teriyaki chicken', price: 15, description: 'marinated chicken, soba noodle, watermelon radish', category_id: c3.id)
Food.create(name: 'to-ban yaki', price: 24, description: 'marinated pork, mushroom, asparagus', category_id: c3.id)
Food.create(name: 'steamed mussel', price: 20, description: 'compound butter, sake sauce, tempura fries', category_id: c3.id)
Food.create(name: 'dark chocolate mochi', price: 6, description: '3 pieces', category_id: c4.id)
Food.create(name: 'macha crepe cake', price: 11, description: 'white chocolate buttercream, strawberries', category_id: c4.id)
Food.create(name: 'black sesame cake', price: 11, description: 'dark chocolate, vanilla ice cream', category_id: c4.id)
Food.create(name: 'yuzu tart', price: 11, description: 'almond crust, miso whipped cream', category_id: c4.id)


puts "✅ Done seeding!"
