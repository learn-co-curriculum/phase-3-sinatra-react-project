class Game < ActiveRecord::Base
  belongs_to :cardset
  belongs_to :user
  
  enum difficulty: { easy: 0, medium: 1, hard: 2 }
  
     def play_with_rules
      apply_difficulty_rules
      play 
     end
    
      def play
        # other game logic here
      end
    
      private
    
      def apply_rules
        send("apply_#{difficulty}_rules")
      end
    
      def apply_easy_rules
        # easy rules logic here
      end
    
      def apply_medium_rules
        apply_easy_rules
          # medium rules logic here
        end
        def apply_hard_rules
          apply_medium_rules
          # hard rules logic here
        end
      end
