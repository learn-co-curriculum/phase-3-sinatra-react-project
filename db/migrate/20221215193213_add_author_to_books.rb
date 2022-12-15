class AddAuthorToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :author, :string
    add_column :books, :year, :integer
    add_column :books, :pages, :integer
  end
end
