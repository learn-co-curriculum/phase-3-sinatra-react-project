class TablesController < ApplicationController

  get "/tables" do
    table = Table.all
    table.to_json(include: [:guest])
  end

  get "/tables/:id" do
    table = Table.find_by_id(params["id"])
    table.to_json(include: [:guest])
  end

end
