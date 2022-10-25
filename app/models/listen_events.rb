class ListenEvent < ActiveRecord::Base
  belongs_to :album

  def self.longest_gap
    order(:updated_at).limit(10)
  end

  def self.most_listens
    artists =
      group(:album_id)
        .order("count_id DESC")
        .limit(5)
        .count(:id)
        .map { |a| Artist.find(Album.find(a[0]).artist_id) }
    values =
      group(:album_id)
        .order("count_id DESC")
        .limit(5)
        .count(:id)
        .map { |a| a[1] }
    array = artists.zip(values)
  end
end
