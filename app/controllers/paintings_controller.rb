class PaintingsController < ApplicationController

  #Paintings is Dogs  

#aka dogs
 get '/paintings' do
    # pry
    paintings = Painting.all
    paintings.to_json(include: :artist)
  end

#  this is the add from the Painting Form 
post '/paintings' do
  painting = Painting.create(params)
  painting.to_json
end

  # aka dogs, delete does not return anything method delete
  # delete '/paintings/:id' do 
  #   painting = Painting.find_by(id: params[:id])
  #   painting.destroy
  # end

  #update the painting' info
#   patch '/paintings/:id' do
#     painting = Painting.find_by(id: params[:id])
#     painting.update(name: params[:name])
#     painting.to_json
#   end  

end