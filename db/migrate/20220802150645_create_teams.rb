class CreateTeams < ActiveRecord::Migration[6.1]

  def change
    create_table :teams do |t|
      
      t.integer :member_id
      t.string :team_name

    end
  end
end


