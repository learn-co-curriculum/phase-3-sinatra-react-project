class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    users = User.all
    users.to_json(include: :tickets)
  end

  get "/users/:id" do
    user = User.find(params[:id])
    user.to_json(include: :tickets)
  end

  get "/concerts" do
    concerts = Concert.all
    concerts.to_json
  end

  get "/concerts/:id" do
    concert = Concert.find(params[:id])
    concert.to_json
  end

  get "/tickets" do
    tickets = Ticket.all
    tickets.to_json
  end

  get "/tickets/:id" do
    ticket = Ticket.find(params[:id])
    ticket.to_json(include: :concert)
  end

  post "/users" do
    newUser = User.create(id: params[:id], name: params[:name], email: params[:email], password: params[:password])
    newUser.to_json
  end

  post "/tickets" do
    newTicket = Ticket.create(id: params[:id], concert_id: params[:concert_id], user_id: params[:user_id])
    newTicket.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(name: params[name], password: params[:password], email: params[:email], tickets: params[:tickets])
    user.to_json
  end

  patch "/concerts/:id" do
    concert = Concert.find(params[:id])
    concert.update(unsold_tickets: params[:unsold_tickets])
    concert.to_json
  end

  delete "/tickets/:id" do
    ticket = Ticket.find(params[:id])
    ticket.destroy
  end

end
