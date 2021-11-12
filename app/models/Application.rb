class Application < ActiveRecord::Base
  has_many :communications

  def self.overdue
    # Return all instances where no communication has been had for X days
  end

  def most_recent_communication
    communications.order(:time).last
  end
end