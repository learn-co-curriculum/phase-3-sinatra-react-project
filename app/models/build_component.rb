class BuildComponent < ActiveRecord::Base
    belongs_to :build
    belongs_to :component

end