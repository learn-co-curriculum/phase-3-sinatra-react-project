class CreateComments < ActiveRecord::Migration[6.1]
  def change
    t.string :comment
    t.integer :rating
  end
end
