class Card < ActiveRecord::Base
    belongs_to :character

    def play(user, target)
        user.update(current_energy: user.current_energy - self.cost)
        target.update(current_HP: target.current_HP - self.damage)
        user.update(current_HP: user.current_HP + self.heal)
        user.update(shield: user.shield + self.shield)

        puts "#{user.name} used #{self.name} on #{target.name}"

    end

end