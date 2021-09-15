class Card < ActiveRecord::Base
    belongs_to :character

    def play(user, target)
        user.update(current_energy: user.current_energy - self.cost)
        target.update(current_HP: target.current_HP - self.damage)
        target.update(current_HP: target.current_HP + self.heal)
        target.update(shield: target.shield + self.shield)

        puts "#{user.name} used #{self.name} on #{target.name}"

    end

end