class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/bucket_list" do
    Item.all.to_json(include: {category: {only: [:id, :name]}})
  end
  
post "/" do 


end
patch "/" do

end
delete "/" do
  
end
end
 