class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/products" do
     Product.all.to_json
  end

  get "/categories" do
    Category.all.to_json
 end

 post "/products" do
  jj = Category.create(name: json_params.category)
  kk = Product.create(json_params)
  kk.category_id = jj.id
end

delete "/products/:id" do |id|
  ab = Product.find_by(id:id)
  ab.destroy
  id
end



end
