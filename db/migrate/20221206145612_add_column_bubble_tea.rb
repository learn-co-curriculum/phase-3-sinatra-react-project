class AddColumnBubbleTea < ActiveRecord::Migration[6.1]
  def change
    add_column :bubbleteas, :image_url, :string
  end
end
