class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # route to list all items
  get "/charities" do
    charities = Charity.all
    charities.to_json
  end

  # handling new charity
  post "/charities" do
    new_char = Charity.create(
      name: params[:name],
      image: params[:image],
      location: params[:location],
      description: params[:description],
      year_established: params[:year_established]
    )

    new_char.to_json
  end

  # displaying all donations
  get "/donations" do
    donation = Donation.all
    donation.to_json
  end

  # adding a donation
  post "/donations" do
    donation = Donation.create(
      name: params[:name],
      image: params[:image],
      description: params[:description],
      quantity: params[:quantity],
      category: params[:category],
      charity_id: params[:charity_id]
    )
    donation.to_json
  end

  # editing a donation
  patch "/donations/:id" do
    donation = Donation.find(params[:id])
    donation.update(
      name: params[:name],
      image: params[:image],
      description: params[:description],
      quantity: params[:quantity],
      category: params[:category]
    )
    donation.to_json
  end

  # deleting a donation
  delete "/donations/:id" do
    donation = Donation.find_by(id: params[:id])
    donation.destroy
    donation.to_json
  end

end
