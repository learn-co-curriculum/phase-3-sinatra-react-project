class Reader < ActiveRecord::Migration[6.1]
  def up
    Create-table:reader do |t|
      t.text: first_name
      t.text: last_name
      t.text: book
    end
    def down
      drop-table:Reader
    end
    
  end
end
