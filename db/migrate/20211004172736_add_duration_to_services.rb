class AddDurationToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :duration, :integer
  end
end
