class Game < ActiveRecord::Base
  belongs_to :cardset
  belongs_to :user
  
  enum difficulty: { easy: 0, medium: 1, hard: 2 }
  
     def play_with_rules
      apply_difficulty_rules
      play 
     end
    
      def play
        (document).ready(function(){
          ("textarea").focus();
        });
        # the game immediately locks the cursor onto the text box, so the player has nothing to click, just start using the keyboard.
      end
    
      private
    
      def apply_rules
        send("apply_#{difficulty}_rules")
      end
    
      def apply_easy_rules
        # Initialize variable
        mistakes_per_question = 0

      # MAKE A POST REQUEST FOR : mistakeCount 

       # Check if the player has made more than 3 mistakes per question
        if mistakes_per_question > 3
          # Prevent the player from making any more mistakes
          # You can do this by disabling input or other ways
        end
        # reset mistakes_per_question for the next question
        mistakes_per_question = 0
      end
      
    
      def apply_medium_rules
        mistakes_per_question = 0
        if mistakes_per_question > 2
        
        end
        mistakes_per_question = 0
        # Initialize variable
        percentage_complete = 0
        # Check if the player has reached 30% of the game
        if percentage_complete > 30
          # Begin to randomize the placeholder text being hidden 30% of the time
          # FRONTEND: create the hideplaceholder function:
          # function hidePlaceholder() {
            # var input = document.getElementById("placeholder-input");
            # input.setAttribute("placeholder", "");}
          if rand <= 0.3
            hideplaceholder()
          else
          puts "all clear!"
        end
      end
      
      
      def apply_hard_rules
        mistakes_per_question = 0
        if mistakes_per_question > 1
        end
        mistakes_per_question = 0
        # apply_medium_rules above

        # Initialize variables
        percentage_complete = 0
        # errors = 0  ?need to be here? 
      
        # Check if the player has reached 65% of the game
        if percentage_complete > 65 
          # Randomize the placeholder text being hidden another 30% of the time
          if rand <= 0.6
            hideplaceholder()
            # Hide placeholder text
            else
              puts "all clear!"
            end
          end
        end
      end
    end
  # end
# end

