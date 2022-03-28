class CreateAdopters < ActiveRecord::Migration[6.1]
  def change
    create_table :adopters do |t|
      t.string :adopter_name
      t.string :email
      t.string :adopter_phone
    end
  end
end
