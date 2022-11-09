class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :Fullname
      t.string :Location
    end
  end
end
