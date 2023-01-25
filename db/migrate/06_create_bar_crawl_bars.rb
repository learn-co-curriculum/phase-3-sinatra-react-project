class CreateBarCrawlBars < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_crawl_bars do |t|
    t.integer :bar_crawl_id
    t.integer :bar_id
    end
  end
end
