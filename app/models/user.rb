class User < ActiveRecord::Base
    has_many :reviews
    has_many :bars, through: :reviews
    has_many :favorite_bars

    # def favorite(bar)
    #     favorite_bars.update(favorited?: , bar_id: bar.id)
    # end
    # def unfavorite(bar)
    #     favorite_bars.update(favorited?: false, bar_id: bar.id)
    # end
end