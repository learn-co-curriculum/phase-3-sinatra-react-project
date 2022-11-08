class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/jipange_app" do
    Item.all.to_json(include: {category: {only: [:id, :name]}})
  end
  
  post "/jipange_app" do
    item = Item.new(name: params[:name], completed: false, category_id: params[:category_id])
    if item.save
      item.to_json(include: {category: {only: [:id, :name]}})
    else
      {errors: item.errors_array}.to_json
    end  
  end

delete '/jipange_app/:id' do
    item = Item.find_by_id(params[:id])
    
    if item 
      item.destroy
      item.to_json(include: {category: {only: [:id, :name]}})
    else
      {errors: "Item not found"}.to_json
    end  
  end


end
 