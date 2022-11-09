class DeleteAgeColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :patients, :age
  end
end
