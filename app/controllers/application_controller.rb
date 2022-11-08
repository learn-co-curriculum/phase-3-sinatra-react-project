class ApplicationController < Sinatra::Base
    get '/bucket_list/categories' do
        Category.all.to_json(include: :items)
    end
    
    get '/bucket_list/categories/:name' do
        category = Category.find_by(name: params[:name]).items.to_json(include: :category)
    end

    post '/bucket_list/categories' do
        category = Category.new(name: params[:name])
        if category.save
            category.to_json(include: :items)
        else
            {errors: category.errors_array}.to_json
        end
    end
    
patch "/" do

end
delete "/" do
  
end
end
 