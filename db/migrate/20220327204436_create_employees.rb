class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :email_verified
      t.string :picture
      t.integer :company_id
      t.integer :team_id
      t.timestamps
    end
  end
end
