class GuestsController < ApplicationController

  get "/guests" do
    Guest.all.to_json(include: [:table])
  end

  get "/guests/:id" do
    guest = Guest.find_by_id(params["id"])
    guest.to_json(include: [:table])
  end

  get "/tables/:table_id/guests" do
    find_table
    @table.guests.to_json(include: [:author])
  end

  post "/tables/:table_id/guests" do
    @tables = Table.find_by_id(params["table_id"])
    @guest = @tables.guests.build(params)
    if @guest.save
      guest_to_json
    else
      guest_error_messages
    end
  end

  delete "/guests/:id" do
    find_guest
    if @guest
      @guest.destroy
      @guest.to_json
    else
      { errors: ["Guest Doesn't Exists"]}.to_json
    end
  end

  patch "/guests/:id" do
    find_guest
    if @guest.update(params)
      guest_to_json
    else
      guest_error_messages
    end
  end

  private
    def find_guest
      @guest = Guest.find_by_id(params["id"])
    end

    def find_table
      @table = Table.find_by_id(params["table_id"])
    end

    def guest_to_json
      @guest.to_json(include: [:table])
    end

    def guest_error_messages
      { errors: @guest.errors.full_messages }.to_json
    end
end