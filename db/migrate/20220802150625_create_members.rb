class CreateMembers < ActiveRecord::Migration[6.1]
  
  def change
    create_table :members do |t|
      t.string :name
      t.string :skill

    end
  end
end




