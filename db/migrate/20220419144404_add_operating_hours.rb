class AddOperatingHours < ActiveRecord::Migration[6.1]
  def change
    add_column(:museums, :operating_hours, :string)
  end
end
