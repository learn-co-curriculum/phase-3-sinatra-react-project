class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :company_id
      t.timestamps
    end
  end
end
