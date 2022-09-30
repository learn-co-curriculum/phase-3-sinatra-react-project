class CreateDecisions < ActiveRecord::Migration[6.1]
  def change
    create_table :decisions do |t|
      t.string :decision_name
      t.string :decision_description
      t.boolean :decided
    end
  end
end
