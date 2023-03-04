class Project < ActiveRecord::Base

    has_many :members
    has_many :users, through: :members

    enum :status, [:CREATED, :COMPLETED, :PENDING]

end
