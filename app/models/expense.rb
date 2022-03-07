class Expense < ActiveRecord::Base
    belongs_to :user

    def self.expenses_total
        # binding.pry
        monthly = all.sum(:monthly)
        puts "Total monthly expenses: $#{monthly}"
    end
end