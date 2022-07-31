class Canvasboard < ActiveRecord::Base
belongs_to :user
has_many :canvaspaths


end
