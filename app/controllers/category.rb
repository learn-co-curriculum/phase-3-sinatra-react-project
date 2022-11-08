class ApplicationController < Sinatra::Base
  
    get '/bucket_list/categories' do
        Category.all.to_json(include: :items)
    end
    
    get '/bucket_list/categories/:name' do
        category = Category.find_by(name: params[:name]).items.to_json(include: :category)
    end

  post "/" do 
  
  
  end
  
  delete "/" do
    
  end

  end