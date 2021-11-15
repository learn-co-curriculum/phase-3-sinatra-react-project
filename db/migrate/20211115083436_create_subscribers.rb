class CreateSubscribers < ActiveRecord::Migration[6.1]
  def change
    create_table :subscribers do |t|
      
      t.belongs_to :newsletter
      t.belongs_to :customer
    end

  end
end
