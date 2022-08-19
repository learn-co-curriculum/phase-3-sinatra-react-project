class KlassSpell < ActiveRecord::Base
  belongs_to :klass
  belongs_to :spell
end