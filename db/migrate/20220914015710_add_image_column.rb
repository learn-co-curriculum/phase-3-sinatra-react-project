class AddImageColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :templates, :img_url, :string
  end
end
