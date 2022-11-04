class TablesController < ApplicationController

  get "/tables" do
    table = Table.all
    table.to_json(include: [:guest])
  end

  get "/tables/:id" do
    table = Table.find_by_id(params["id"])
    table.to_json(include: [:guest])
  end

  post "/tables" do
    table = Table.create(
      table_number: params[:table_number],
    )
    if table.save
      table.to_json(include: :guest)
    else
      { error: table.errors.full_messages }.to_json
    end
  end

  delete "/tables/:id" do
    table = Table.find_by_id(params["id"])
    if table 
      table.destroy
      table.to_json
    else
      { errors: ["Cannot Delete Table Now"]}
    end
  end

end
