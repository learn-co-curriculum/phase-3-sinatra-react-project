class RemoveEmailVerifiedColumnFromEmployees < ActiveRecord::Migration[6.1]
  def change
    change_table :employees do |t|
      t.remove :email_verified
    end
  end
end
