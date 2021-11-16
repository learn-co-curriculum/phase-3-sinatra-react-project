class AddShelteridToAnimalsAgain < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :shelter_id, :integer
  end
end
