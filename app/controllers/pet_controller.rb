class PetController < ApplicationController

    get "/pet" do
        if check_login
            p "user=#{@user}"
            Pet.where(user_id: @user.id).to_json
        else
            return {login_error: false}.to_json
        end
    end

    post "/pet" do 
        p "hh=#{params}"
        if check_login
          Pet.create(user_id: @user.id, creature_id: params[:creature_id]).to_json
        else
          return {login_error: false}.to_json
        end
    end

    delete "/pet" do
        if check_login 
            @pet = Pet.find_by_id(params[:id])
            @pet.delete
                return  {message: "Removed"}.to_json
        else
            return {login_error: false}.to_json
        end
    end  
end