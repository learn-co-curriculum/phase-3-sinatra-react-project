class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get '/pieces' do 
    Piece.all.to_json
  end

  post '/pieces' do

    piece = Piece.create(
      title: params[:title],
      image:params[:image],
      date:params[:date],
      artist:params[:artist],
      medium: params[:medium],
      dimensions: params[:dimensions],
      city:params[:city],
      price: params[:price],
      in_stock: params[:in_stock],
      seller_id: Seller.all.find_by(seller_name: params[:seller_name]).id )
  end

end
