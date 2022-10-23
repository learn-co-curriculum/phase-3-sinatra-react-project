class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :listen_events
end
