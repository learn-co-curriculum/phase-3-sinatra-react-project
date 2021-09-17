class Character < ActiveRecord::Base
  has_many :cards

  def self.reset
    self.all.update(current_energy: max_energy)
    self.all.update(current_HP: max_HP)
    self.all.update(shield: 0)
  end

end