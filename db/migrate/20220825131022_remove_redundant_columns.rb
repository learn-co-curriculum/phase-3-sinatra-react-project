class RemoveRedundantColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :races, :starting_proficiencies, :string
    remove_column :races, :proficiency_choices, :string
    remove_column :klasses, :saving_throws, :string
    remove_column :klasses, :proficiencies, :string
  end
end
