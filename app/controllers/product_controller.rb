class ProductController < ApplicationController

    get '/products' do
        Product.all.to_json
    end

    get '/products/:id' do
        product = Product.find(params[:id])
        product.to_json(include: :reviews)
    end

    post '/products' do
        product = Product.create(
        {name: params[:name],
        department: params[:department],
        description: params[:description],
        unit_price: params[:unit_price],
        img_url: params[:img_url],
        inventory: params[:inventory]}
        )
    end

    patch '/products/:id' do
      product = Product.find(params[:id])
      product.update(
      {name: params[:name],
      department: params[:department],
      description: params[:description],
      unit_price: params[:unit_price],
      img_url: params[:img_url],
      inventory: params[:inventory]}
      )
      product.to_json
      OrderItem.create(quantity: 1, unit_price: product.price, product_id: product.id ).to_json
    end  
    
    delete '/products/:id' do
        product = Product.find(params[:id])
        product.destroy
        {message: 'patient deleted'}.to_json
    end


    

end


