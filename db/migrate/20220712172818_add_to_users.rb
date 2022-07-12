class AddToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :sexuality, :string
    add_column :users, :location, :string
    add_column :users, :info, :text
    add_column :users, :image, :text
  end
end
