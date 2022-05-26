class CreateMembers < ActiveRecord::Migration[6.1]
  def change

    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :profession

      t.belongs_to :household

      t.timestamps
    end
  end


end
