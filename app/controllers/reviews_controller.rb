class ReviewsController < ApplicationController
    get "/reviews" do
        #can we queury the data in here to only return specific reviews
        #something like if params.include("rating < x") only show specific rating
        Review.all.to_json
    end
    patch "/reviews/:id" do
        find_review
        #use private method to grab only acceptable params
        @review.update(params)
        
    end
    post ".reviews/:id" do 
        review = Review.create(params)
        review.to_json
    end
    delete "./reviews/:id" do
        find_review
        Review.delete(@review)
    end
    private 

    def find_review
        @review = Review.find([params[:id]])
    end

end