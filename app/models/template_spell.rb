class template_spell < ActiveRecord::Base
    belongs_to :template
    belongs_to :spell
end