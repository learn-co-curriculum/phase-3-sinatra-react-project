require 'pry'

class Guess < ActiveRecord::Base
  
  def self.attempt(game, word, input)
    attempt = Guess.create(game_id: game.id, word_id: word.id, input: input)
    attempt_input = attempt.input
    target_word = attempt.word.game_word

    def generate_hint(target_word, attempt_input)
      target_word = target_word.chars
      result = ""
      attempt_input.chars.each_with_index do |letter, index|
        score = 0
        if target_word.include?(letter) && target_word[index] == letter
          score += 2
        elsif target_word.include?(letter)
          score += 1
        else
        # score += 1 if target_word.inludes(letter)
        # score += 1 if target_word[index] == letter
        score
      end
      result += score.to_s
      binding.pry
    end
    result
    self.hint = result
    self.save
  end

  attempt.generate_hint(target_word, attempt_input)
  attempt
end

   belongs_to :game
   belongs_to :word

  #  def initialize
  #   self.generate_hint
  #   @hint = result
  #  end
 end
 