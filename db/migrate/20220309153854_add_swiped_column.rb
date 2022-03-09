class AddSwipedColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :swipe_status, :boolean
  end
end
