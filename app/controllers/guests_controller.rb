class GuestsController < ApplicationController

  get "/guests" do
    guest = Guest.all
    guest.to_json(include: :tables)
  end

  get "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    guest.to_json(include: [:tables])
  end

  patch "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    if guest
      guest.update(params)
      guest.to_json(include: :tables)
    else
      { error: guest.errors.full_messages }.to_json
    end
  end

end