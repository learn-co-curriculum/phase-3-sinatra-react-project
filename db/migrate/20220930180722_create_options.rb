class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :option_name
      t.integer :num_votes
      t.integer :decision_id
      t.boolean :chosen
    end
  end
end
