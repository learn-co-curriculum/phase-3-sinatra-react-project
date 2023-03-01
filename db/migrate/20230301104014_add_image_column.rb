class AddImageColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :image_url, :string 
  end
end
