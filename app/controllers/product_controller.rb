class ProductController < ApplicationController

    get '/products' do
        Product.all.to_json
      end

    post '/products' do
        patient = Product.create(
        {name: params[:name],
        category: params[:category],
        description: params[:description],
        unit_price: params[:unit_price],
        img_url: params[:img_url],
        review: params[:review]}
        )
        patient.to_json(include: :clinic)
      end  


end
