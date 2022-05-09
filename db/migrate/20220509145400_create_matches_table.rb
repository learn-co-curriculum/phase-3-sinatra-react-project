class CreateMatchesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.references :user, foreign_key: true, null: false
      t.references :lover, foreign_key: true, null: false
      t.string :comment
    end
  end
end
