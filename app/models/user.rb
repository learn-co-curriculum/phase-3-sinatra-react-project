class User < ActiveRecord::Base
    # has_many :reviews
    # has_many :bars, through: :reviews
    has_many :bar_crawls

    has_many :bars, foreign_key: 'owner_id'
    has_many :reviews
    has_many :reviewed_bars, through: :reviews, source: :bar

    has_many :favorite_bars
    has_many :liked_bars, through: :favorite_bars, source: :bar

    # has_many :favorite_bars
    # has_many :bars, through: :favorite_bars
    # alias_method :favorite_bars, :favorite_bars
    

    def favorite(bar)
        FavoriteBar.create(user_id: self.id, bar_id: bar.id)
    end

    def unfavorite(bar)
        FavoriteBar.find_by(user_id: self.id, bar_id: bar.id).destroy
    end

    def all_favorites
        FavoriteBar.all.select {|favorite| favorite.user_id == self.id}
    end

    def all_reviews
        Review.all.select {|review| review.user_id == self.id}
    end

end