class User < ActiveRecord::Base
    has_many :reviews
    has_many :bars, through: :reviews
    has_many :favorite_bars
    has_many :bars, through: :favorite_bars

    def favorite(bar)
        FavoriteBar.create(user_id: self.id, bar_id: bar.id)
    end

    def unfavorite(bar)
        FavoriteBar.find_by(user_id: self.id, bar_id: bar.id).destroy
    end

end