class CreateBarCrawls < ActiveRecord::Migration[6.1]
  def change
    create_table :bar_crawls do |t|
      t. :bar_name
      t.integer :user_id
      t.integer :bar_id
    end
  end
end
