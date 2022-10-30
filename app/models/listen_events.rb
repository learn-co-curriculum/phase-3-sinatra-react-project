class ListenEvent < ActiveRecord::Base
  belongs_to :album

  def self.longest_gap
    order(:updated_at).limit(10)
  end

  def self.most_listens
    albums =
      ListenEvent
        .group(:album_id)
        .order("count_id DESC")
        .limit(15)
        .count(:id)
        .to_a
        .map { |a| a[0] }
        .map { |a| Album.find(a) }

    listens =
      ListenEvent
        .group(:album_id)
        .order("count_id DESC")
        .limit(15)
        .count(:id)
        .to_a
        .map { |a| a[1] }

    albumsWith = albums.map { |a| JSON.parse(a.to_json(include: :artist)) }

    albumsWithListens = albumsWith.zip(listens)
  end
end
