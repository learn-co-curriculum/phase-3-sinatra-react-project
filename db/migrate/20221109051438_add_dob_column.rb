class AddDobColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :patients, :dob, :datetime
  end
end
