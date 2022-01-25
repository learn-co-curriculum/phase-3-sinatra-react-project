class Park < ActiveRecord::Base
    belongs_to :state
    belongs_to :list
end