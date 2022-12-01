class CreateRequestVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :request_votes do |t|
      t.integer :vote
      t.integer :restaurant_request_id
      t.timestamps
    end
  end
end
