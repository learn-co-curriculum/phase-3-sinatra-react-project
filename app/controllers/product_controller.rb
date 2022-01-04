class ProductController < ApplicationController

    get '/products' do
        Product.all.to_json
      end

    post '/products' do
        product = Product.create(
        {name: params[:name],
        category: params[:category],
        description: params[:description],
        unit_price: params[:unit_price],
        img_url: params[:img_url],
        review: params[:review]}
        )
      end  

      get '/products/:id' do
        Product.find(params[:id]).to_json
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
    end


end
