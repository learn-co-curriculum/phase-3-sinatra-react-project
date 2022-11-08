class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/bucket_list" do
    Item.all.to_json(include: {category: {only: [:id, :name]}})
  end
  
  post "/bucket_list" do
    item = Item.new(name: params[:name], completed: false, category_id: params[:category_id])
    if item.save
      item.to_json(include: {category: {only: [:id, :name]}})
    else
      {errors: item.errors_array}.to_json
    end  
  end

delete '/bucket_list/:id' do
    item = Item.find_by_id(params[:id])
    
    if item 
      item.destroy
      item.to_json(include: {category: {only: [:id, :name]}})
    else
      {errors: "Item not found"}.to_json
    end  
  end
delete "/" do
  
end
end
 