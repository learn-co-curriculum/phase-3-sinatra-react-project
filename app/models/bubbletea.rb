class Bubbletea < ActiveRecord::Base

    has_many :bubbleteas

    has_many :customers, through: :orders
    
end