class CreateYogaClasses < ActiveRecord::Migration[6.1]
  def change
    create_table :yoga_classes do |t|
    t.string :teacher_name
    t.string :class_name
    t.string :class_time
    end
  end
end
