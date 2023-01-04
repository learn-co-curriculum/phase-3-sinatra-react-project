class CreateUnits < ActiveRecord::Migration[6.1]
  def change
    create_table :units do |t|
      t.string  :address
      t.string  :current_tenant
      t.boolean :open_request?

      t.belongs_to  :owner
      t.belongs_to  :maintenancerequest

      t.timestamps
    end
  end
end
