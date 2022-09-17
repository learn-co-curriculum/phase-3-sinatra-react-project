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
  puts request.body.read
  # binding.pry
  var = params
  jj = Category.create(name: var["category"])
  kk = Product.create(name: var["name"], image: var["image"], price: var["price"], category_id: jj["id"])
  jj.save
  kk.save
  kk
end

delete "/products/:id" do |id|
  ab = Product.find_by(id:id)
  ab.destroy
  id
end



end
