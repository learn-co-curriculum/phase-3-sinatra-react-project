class Build < ActiveRecord::Base
    has_many :build_components
    has_many :components, through: :build_components
    
end