class CreateStore < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
     end
  end
end
