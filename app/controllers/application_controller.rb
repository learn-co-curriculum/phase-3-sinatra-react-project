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
  get "/contacts/:id" do
    contact = Contact.find_by(id:params[:id])
    contact.to_json
  end
  
  get "/contacts/:name" do 
    contacts = Contact.all.where(company_name:params[:name])
    contacts.to_json
  end
  post "/contacts" do
    contact = Contact.create(
      name: params[:name],
      phone: params[:phone],
      email: params[:email],
      company_name:params[:company_name],
      company_id: params[:company_id],
      title: params[:title],
      photo: params[:photo]
    )
    contact.to_json
  end
  patch "/contacts/:id" do 
    contact = Contact.find(params[:id])
    contact.update(
        name: params[:name],
      phone: params[:phone],
      email: params[:email],
      company_name:params[:company_name],
      company_id: params[:company_id],
      title: params[:title],
      photo: params[:photo]
    )
    contact.to_json
  end

  delete "/contacts/:id" do 
    contact = Contact.find(params[:id])
    contact.destroy
    contact.to_json
  end
end
