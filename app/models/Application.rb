class Application < ActiveRecord::Base
  has_many :communications

  def most_recent_communication
    communications.order(:time).last
  end
end