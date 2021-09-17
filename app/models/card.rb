class Card < ActiveRecord::Base
    belongs_to :character

    def play(user, target)
        user.update(current_energy: user.current_energy - self.cost)

        # shielding
        effective_damage = self.damage - target.shield
        if effective_damage > 0
            target.update(current_HP: target.current_HP - effective_damage)
            target.update(shield: 0)
        else 
            target.update(shield: 0 - effective_damage)
        end
            
        # target.update(current_HP: target.current_HP - self.damage)
        if user.current_HP + self.heal <= user.max_HP
            user.update(current_HP: user.current_HP + self.heal)
        else
            user.update(current_HP: user.max_HP)
        end

        user.update(shield: user.shield + self.shield)

        puts "#{user.name} used #{self.name} on #{target.name}"
    end

    # can implement more sophisticated game logic as more cards are added

end