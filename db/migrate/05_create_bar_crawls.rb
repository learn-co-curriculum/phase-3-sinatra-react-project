class CreateBarCrawls < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_crawls do |t|
      t.string :bar_crawl_bars
      t.string :bar_crawl_name
      t.integer :user_id
    end
  end
end
