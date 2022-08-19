class CreateCharFeats < ActiveRecord::Migration[6.1]
  def change
    create_table :char_feats do |t|
      t.integer :character_id
      t.integer :feat_id
    end
  end
end
