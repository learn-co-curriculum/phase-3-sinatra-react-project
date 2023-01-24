class CreateQueues < ActiveRecord::Migration[6.1]
  def change
    create_table :queues do |t|
      t.integer :movie_id
      t.integer :user_id
    end
  end
end
