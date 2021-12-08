class ReviewsController < ApplicationController
    
  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    {message:'review destroyed'}.to_json
  end

end

#handle delete for front end
# const handleDelete = (id) => {
#   fetch(`http://localhost:9292/reviews/${id}`, {
#     method: 'DELETE',
#     headers: {
#       'Content-Type': 'application/json'
#     }
#   })
#   .then(res => res.json())
#   .then(() =>
#   setReviews(reviews.filter(r => r.id !== id)))
# }