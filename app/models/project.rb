class Project < ActiveRecord::Base
    has_many :tasks

    validates :name, presence: true, uniqueness: true
    # rollbacks transaction if project title reused
end

