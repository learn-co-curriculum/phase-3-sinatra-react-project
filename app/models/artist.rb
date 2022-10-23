class Artist < ActiveRecord::Base
  has_many :albums
  has_many :listen_events
end
