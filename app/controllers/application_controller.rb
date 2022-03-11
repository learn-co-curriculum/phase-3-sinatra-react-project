class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
get "/poses" do
  poses = Pose.all
  poses.to_json
 
end
get "/yoga_classes" do
  yoga_classes = Yoga_Class.all
  yoga_classes.to_json
end
delete '/yoga_class/:id' do
  yoga_class=Yoga_Class.find(params[:id])
  yoga_class.destroy
  yoga_class.to_json
end
post "/yoga_classes" do
  yoga_classes = Yoga_Class.create(
  teacher_name: params[:teacher_name],
  class_name: params[:class_name],
  class_time: params[:class_time]
  )
  # call method here
  yoga_classes.to_json
  end

end
