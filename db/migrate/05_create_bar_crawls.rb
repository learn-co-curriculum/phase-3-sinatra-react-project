class CreateBarCrawls < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_crawls do |t|
      t.string :bar__crawl_name
      # t.integer 
      # t.integer 
    end
  end
end
