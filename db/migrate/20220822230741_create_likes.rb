class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|
      t.belongs_to :animal
      t.belongs_to :user
      t.timestamps
    end
  end
end
