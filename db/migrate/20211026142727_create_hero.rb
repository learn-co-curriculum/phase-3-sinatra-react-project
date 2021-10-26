class CreateHero < ActiveRecord::Migration[6.1]
  def change
    create_table :heros do |t|
      t.string :name
    end
  end
end
