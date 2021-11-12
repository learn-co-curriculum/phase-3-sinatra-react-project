class CreateCommunications < ActiveRecord::Migration[6.1]
  def change
    create_table :communications do |t|
      t.datetime :time 
      t.boolean :received
      t.text :comment
      t.belongs_to :application
    end
  end
end
