class BarCrawlBar < ActiveRecord::Base
    belongs_to :bar_crawl
    belongs_to :bar
end