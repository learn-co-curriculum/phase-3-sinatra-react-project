class AddStatToSkills < ActiveRecord::Migration[6.1]
  def change
    add_column :skills, :stat, :string
  end
end
