class CreateTables < ActiveRecord::Migration[6.1]
  
  def change
    create_table :matches do |t|
      t.integer :tutor_id
      t.integer :student_id
      t.string :subject
      t.string :schedule
      t.string :online_in_person
      t.string :location
      t.boolean :matched, default: false
      
    end
    create_table :tutors do |t|
      t.string :name
      t.string :location
      t.string :subjects
      t.integer :rate
      t.string :online_in_person
      t.string :gender
      t.string :bio
      t.string :availability 
      t.boolean :background_check
      t.string :timezone
      t.string :username
      t.string :password
      t.string :img
    end
    create_table :students do |t|
      t.string :name
      t.string :grade
      t.integer :age
      t.string :timezone
      t.string :username
      t.string :password 
      t.string :img
    end
    
  end

end
