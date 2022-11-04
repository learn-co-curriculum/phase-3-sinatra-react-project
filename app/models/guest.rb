class Guest < ActiveRecord::Base
  belongs_to :tables, dependent: :destroy
  validates :name, :number_of_guests, :reservation, presence: true
  validates :reservation, uniqueness: true

  # def as_json(options={})
  #   options[:methods] = [:display_time]
  #   super
  # end

  # # def display_time
  # #   Time.now.strftime("%I:%M")
  # # end
  # def display_time(time)
  #   guest.reservation.strftime("%I:%M %p")
  # end

  # def display_time
  #   guest.reservation.strftime("%I:%M %p")
  # end

end