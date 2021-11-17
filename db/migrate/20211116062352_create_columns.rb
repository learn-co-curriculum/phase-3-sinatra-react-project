class CreateColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :planes, :pilot_id, :integer
  end
end
