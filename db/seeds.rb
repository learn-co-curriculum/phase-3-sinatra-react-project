puts "🌱 Seeding spices..."
Cardset.create(card_id: 1, user_id: 1, )

Game.create(user_id: 1, cardset_id: 1, date: Time.now, score: 99)

User.create(name: 'AleOta', email: 'ale@ota.com', password: 'derikJater')
# Seed your database here
Card.create(question: 'console.log()')
Card.create(question: '.each', answer: '.each', hint: 'used for iterating through collections', description: '.each', cardset_id: 1)
Card.create(question: '.map', answer: '.map', hint: 'for creating a new array with the results of a block', description: '.map,', cardset_id: 1)
Card.create(question: '.select', answer: '.select', hint: 'for selecting elements from a collection that match a certain condition', description: '.select', cardset_id: 1)
Card.create(question: '.inject', answer: '.inject', hint: 'for accumulating values', description: '.inject', cardset_id: 1)
Card.create(question: 'id INT AUTO_INCREMENT PRIMARY KEY', answer: 'id INT AUTO_INCREMENT PRIMARY KEY', description: 'SQL portion', cardset_id: 1)
puts "✅ Done seeding!"
