class CreateYogaClassPoses < ActiveRecord::Migration[6.1]
  def change
    create_table :yoga_class_poses do |t|
    t.integer :yoga_class_id
    t.integer :pose_id
    end
  end
end
