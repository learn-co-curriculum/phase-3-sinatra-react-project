class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name
    end
  end
end
