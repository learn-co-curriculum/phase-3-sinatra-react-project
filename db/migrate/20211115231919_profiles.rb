class Profiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :user_name
    end
  end
end
