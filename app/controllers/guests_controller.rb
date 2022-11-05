class GuestsController < ApplicationController

  get "/guests" do
    guest = Guest.all
    guest.to_json(include: :table)
  end

  get "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    guest.to_json(include: [:table])
  end

  post "/guests" do
    guest = Guest.create(
      name: params[:name],
      number_of_guests: params[:number_of_guests],
      reservation: params[:reservation],
      notes: params[:notes],
      table_id: params[:table_id]
      ) 
      guest.to_json
    if guest.save
      guest.to_json(include: :table)
    else
      { error: guest.errors.full_messages }.to_json
    end
  end

  delete "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    if guest
      guest.destroy
      guest.to_json
    else
      { errors: ["Guest Doesn't Exists"]}.to_json
    end
  end

  patch "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    if guest
      guest.update(params)
      guest.to_json(include: :table)
    else
      { error: guest.errors.full_messages }.to_json
    end
  end

end