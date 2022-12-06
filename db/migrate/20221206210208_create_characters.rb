class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :type 
      t.string :catchphrase
      t.string :personality
      t.string :strength
      t.string :weakness
      t.string :background
    end
  end
end
