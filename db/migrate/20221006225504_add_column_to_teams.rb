class AddColumnToTeams < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :starter, :boolean
  end
end
