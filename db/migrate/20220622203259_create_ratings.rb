class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
      t.integer :rating
    end
    add_belongs_to :ratings, :cheese
  end
end
