class CreatePosts < ActiveRecord::Migration[6.1]

  

main
    def change
      create_table :posts do |t|
        t.string :content
      end
  end
end
