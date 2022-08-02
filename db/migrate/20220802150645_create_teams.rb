class CreateTeams < ActiveRecord::Migration[6.1]

  def change
    create_table :teams do |t|
      
      t.integer :member_id

    end
  end
end


