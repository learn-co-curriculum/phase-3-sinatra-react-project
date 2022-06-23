class MemberController < ApplicationController

  get '/members' do
    members = Member.all
    if params[:household_id]
      members = members.where(household_id: params[:household_id])
    end

    members.to_json
  end

  get '/members/:id' do
    member = Member.find(params[:id])
    member.to_json
  end


  post '/members' do
    member = Member.new({
                          first_name: params["first_name"],
                          last_name: params["last_name"],
                          age: params["age"],
                          profession: params["profession"],
                          household_id: params["household_id"]
                        })
    if  member.save
      member.to_json
    else
      { errors: member.errors.full_messages }.to_json
    end
  end


  delete '/members/:id' do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

  patch '/members/:id' do
    member = Member.find(params[:id])
    member.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      profession: params[:profession]
    )
    member.to_json
  end

end