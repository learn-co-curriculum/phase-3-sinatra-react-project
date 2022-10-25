class Artist < ActiveRecord::Base
  has_many :albums
  has_many :listen_events, through: :albums
end
