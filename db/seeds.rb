
Cardset.destroy_all
Card.destroy_all

puts "🌱 Seeding spices..."

Cardset.create(card_id: 1, user_id: 1, title: "Ruby")
Cardset.create(card_id: 2, user_id: 1, title: "Javascript")
Cardset.create(card_id: 3, user_id: 1, title: "Css")
Cardset.create(card_id: 4, user_id: 1, title: "French")
Cardset.create(card_id: 5, user_id: 1, title: "Spanish")

Game.create(user_id: 1, cardset_id: 1, date: Time.now, score: 99)

User.create(name: 'AleOta', email: 'ale@ota.com', password: 'derikJater')
# Seed your database here
Card.create(question: '.each', answer: '.each', hint: 'used for iterating through collections', description: '.each', cardset_id: 1)
Card.create(question: '.map', answer: '.map', hint: 'for creating a new array with the results of a block', description: '.map,', cardset_id: 1)
Card.create(question: '.select', answer: '.select', hint: 'for selecting elements from a collection that match a certain condition', description: '.select', cardset_id: 1)
Card.create(question: '.inject', answer: '.inject', hint: 'for accumulating values', description: '.inject', cardset_id: 1)
Card.create(question: '.count', answer: '.count', description: 'for counting values', cardset_id: 1)
Card.create(question: '.average', answer: '.average', hint: 'prived a float number as an average between given values', description: '.average', cardset_id: 1)
Card.create(question: '.minimum', answer: '.minimum', hint: 'finding the smallest value in an array object', description: '.minimum,', cardset_id: 1)
Card.create(question: '.maximum', answer: '.maximum', hint: 'finding the largest value in an array object', description: '.maximum', cardset_id: 1)
Card.create(question: '.explain', answer: '.explain', hint: 'performs a printing that mirrors that of the corresponding database', description: '.explain', cardset_id: 1)
Card.create(question: '.includes', answer: '.includes', description: 'to include values', cardset_id: 1)
Card.create(question: '.order', answer: '.order', hint: 'orders the array in ascending order ', description: '.order', cardset_id: 1)

Card.create(question: '.forEach', answer: '.forEach', hint: 'a function that activates a given function as many times as there are indexes in the array given', description: '.forEach', cardset_id: 2)
Card.create(question: '.map', answer: '.map', hint: 'for creating a new array with the results of a block', description: '.map,', cardset_id: 2)
Card.create(question: '.useState', answer: '.useState', hint: 'used for sending information down into react components', description: '.select', cardset_id: 2)
Card.create(question: 'useEffect', answer: '.useEffect', hint: 'used to activate a funtion only once from a refresh, so that a react reload does not activate it again', description: '.inject', cardset_id: 2)
Card.create(question: '.push', answer: '.count', description: 'to put a variable onto an array', cardset_id: 2)

puts "✅ Done seeding!"
