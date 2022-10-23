class ListenEvents < ActiveRecord::Base
  belongs_to :album
  belongs_to :artist
end
