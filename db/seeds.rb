puts "🌱 Seeding spices..."

puts "🌱 Seeding users..."

u1 = User.create(name: 'Michael')
u2 = User.create(name: 'Tom')

puts "🌱 Seeding games..."

g1 = Game.create(score: 5, user_id: u1.id)
g2 = Game.create(score: 10, user_id: u2.id)

puts "🌱 Seeding words..."

w1 = Word.create(word: 'banana', image_url: "banana.jpg")
w2 = Word.create(word: 'ball', image_url: "ball.jpg")

puts "🌱 Seeding game_words..."

gw1 = GameWord.create(word_id: w1.id, game_id: g1.id, correct?: true)
gw2 = GameWord.create(word_id: w2.id, game_id: g2.id, correct?: false)

puts "✅ Done seeding!"
