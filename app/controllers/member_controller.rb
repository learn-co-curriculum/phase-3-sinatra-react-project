class MemberController < ApplicationController

  # get all members of a household
  # create a member
  # update a member
  # delete a member

  get '/members' do
    members = Member.all
    if params[:household_id]
      members = members.where(household_id: params[:household_id])
    end

    members.to_json
  end

  post '/members' do
    member = Member.new({
                          first_name: params["firstName"],
                          last_name: params["lastName"],
                          age: params["age"],
                          profession: params["profession"]

                        })
    if  member.save
      member.to_json
    else
      { errors: member.errors.full_messages }.to_json
    end
  end

  # get '/members/:id' do
  #   members = Member.all.select {|m| m.household_id === params[id]}
  # end


end