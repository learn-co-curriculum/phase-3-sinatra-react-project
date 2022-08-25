class AddImageColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :image, :string
    add_column :players, :image, :string
  end
end
