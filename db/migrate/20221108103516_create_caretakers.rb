class CreateCaretakers < ActiveRecord::Migration[6.1]
  def change
    create_table :caretakers do |t|
      t.string :name
      t.integer:block_id
    end
  end
end
