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

  patch '/reviews/:id' do 
    review = Review.find(params[:id])
    review.update(
      comment: params[:comment],
      rating: params[:rating]
    )
    review.to_json
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

#handle submit to update reviews for movie
# function EditReviewForm({ review, onUpdateReview }) {
#   const [comment, setComment] = useState("");
#   const [rating, setRating] = useState("0");

#   function handleSubmit(e) {
#     e.preventDefault();
#     fetch(`http://localhost:9292/reviews/${review.id}`, {
#       method: "PATCH",
#       headers: {
#         "Content-Type": "application/json",
#       },
#       body: JSON.stringify({
#         comment: comment,
#         rating: rating,
#       }),
#     })
#       .then((r) => r.json())
#       .then((updatedReview) => onUpdateReview(updatedReview));
#   }

#   return <form onSubmit={handleSubmit}>{/* controlled form code here*/}</form>;
# }