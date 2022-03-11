class Component < ActiveRecord::Base
    has_many :build_components
    has_many :builds, through: :build_components

   
end