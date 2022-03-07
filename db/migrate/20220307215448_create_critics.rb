class CreateCritics < ActiveRecord::Migration[6.1]
  def change
    create_table :critics do |t|
      t.string :name
    end
  end
end
