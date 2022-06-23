require 'pry'
require_relative './bank'

Player.destroy_all
Game.destroy_all
Guess.destroy_all



puts "🌱 Seeding spices..."

Bank.words.each do |word|
    Word.create(game_word: word)
end

test_word = Word.all.sample
test_player = Player.create(input_name: "Mr.test")
test_game = Game.create(player: test_player, word: test_word)
test_guess = Guess.create(game: test_game, word: test_word, input: "guess")


puts "✅ Done seeding!"
