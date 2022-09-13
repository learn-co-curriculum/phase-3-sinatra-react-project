class template_weapon < ActiveRecord::Base
    belongs_to :template
    belongs_to :weapon
end