require 'date'

class Day < ActiveRecord::Base
    has_many :tasks
end