class Ages < ActiveRecord::Migration[6.1]
  def change
    create_table :ages do |t|
     t.string :age_range
    end 
  end
end
