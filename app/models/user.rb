class User < ActiveRecord::Base
    has_many :matches, dependent: :destroy
    has_many :lovers, through: :matches

    def age
        return nil if self.birthdate.nil?
        days_old = (Date.today - self.birthdate).to_i.days
        if days_old < 30.days
          weeks_old = days_old.in_weeks.floor
          "#{weeks_old} #{'week'.pluralize(weeks_old)}"
        elsif days_old < 365.days
          months_old = days_old.in_months.floor
          "#{months_old} #{'month'.pluralize(months_old)}"
        else
          years_old = days_old.in_years.floor
          "#{years_old} #{'year'.pluralize(years_old)}"
        end
      end
    
end