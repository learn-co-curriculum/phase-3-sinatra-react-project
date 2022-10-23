class Album < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :listen_events

  def genres
    genre_id.split(", ").map { |g| Genre.find(g)["name"] }.join(", ")
  end
end
