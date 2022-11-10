class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/contacts" do 
    contacts = Contact.all
    contacts.to_json
  end
  get "/contacts/:name" do
    contacts = Contact.where(name: params[:name])
    contacts.to_json
  end
  post "/contacts" do
    contact = Contact.create(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      company_id: params[:company_id],
      title: params[:title]    
    )
    contact.to_json
  end
end
