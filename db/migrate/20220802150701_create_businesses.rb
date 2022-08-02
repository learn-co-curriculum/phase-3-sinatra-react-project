class CreateBusinesses < ActiveRecord::Migration[6.1]
  
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :logo_url
      t.string :email
      t.string :contact_name
      t.string :phone
    end
  end
end

