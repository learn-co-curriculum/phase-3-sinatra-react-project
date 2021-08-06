class Note < ActiveRecord::Base
    belongs_to :trip, dependent: :destroy
end