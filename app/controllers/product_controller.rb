class ProductController < ApplicationController
    set :default_content_type, 'application/json'


    post "/products" do
        product = Product.new_product
        product.to_json
      end


    get "/products" do
      products = Product.all
      products.to_json
    end
  

    get "/products/:id" do
      product = Product.find(params[:id])
      product.to_json
    end


    patch "/products/:id" do
      product = Product.find(params[:id])
      product.update(
        name: params[:name],
        price: params[:price],
        inventory: params[:inventory],
        category: params[:category]
      )
      product.to_json
    end


    delete "/products/:id" do
        product = Product.find(params[:id])
        product.destroy
        product.to_json
    end


    
  end
  