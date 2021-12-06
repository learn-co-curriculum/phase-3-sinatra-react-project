class AddSubjectColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :subject, :string
  end
end
