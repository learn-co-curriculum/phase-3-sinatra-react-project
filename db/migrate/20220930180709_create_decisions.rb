class CreateDecisions < ActiveRecord::Migration[6.1]
  def change
    create_table :decisions do |t|
      t.string :event_type
      t.boolean :decided
      t.string :group_name
      t.datetime :event_time
      t.datetime :decision_deadline
    end
  end
end
