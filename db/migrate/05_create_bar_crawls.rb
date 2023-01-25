class CreateBarCrawls < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_crawls do |t|
      t.string :bar_crawl_name
      t.integer :bar1_id
      t.integer :bar2_id
      t.integer :bar3_id
      t.integer :bar4_id
      t.integer :bar5_id
    end
  end
end
