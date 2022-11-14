class AddNameAndAddressToPlaygrounds < ActiveRecord::Migration[6.1]
  def change
    create_table :playgrounds do |t|
      t.string :name
      t.string :address
    end
  end
end
