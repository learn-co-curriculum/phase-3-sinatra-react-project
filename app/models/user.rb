class User < ActiveRecord::Base
    has_many :reviews
    has_many :bars, through: :reviews
    has_many :favorite_bars
    has_many :bars, through: :favorite_bars
    has_many :bar_crawls
    has_many :bars, through: :bar_crawls


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