class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
  get '/pieces' do 
    Piece.all.to_json
  end

  delete '/pieces/:id' do
    piece = Piece.find(params[:id])
    piece.destroy
  end

  get '/pieces/:id' do
    piece = Piece.find(params[:id])
    piece.to_json(include: :reviews)
  end

  get '/sellers' do
    Seller.all.to_json
  end

  get '/sellers/:id' do
    seller = Seller.find(params[:id])
    seller.to_json(include: :pieces)
  end

 

  post '/seller' do
    newSeller = Seller.create(seller_name:params[:seller_name], password:params[:password])
    newSeller.to_json
  end

  post '/piece' do 
    newPiece = Piece.create( title: params[:title],
      image:params[:image],
      date:params[:date],
      artist:params[:artist],
      medium: params[:medium],
      dimensions: params[:dimensions],
      city:params[:city],
      price: params[:price],
      in_stock: params[:in_stock],
      seller_id: Seller.find_by(seller_name: params[:seller_name]).id )
    newPiece.to_json
  end


end
