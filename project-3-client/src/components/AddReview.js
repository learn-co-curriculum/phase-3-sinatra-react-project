import React, { useState } from "react";

function AddReview({postedReview}) {
    const [formData, setFormData] = useState({
        message: "",
        stars: 0,
        destination_id: "",
    });

    function handleChange(e) {
        console.log(e.target.value)
        const { name, value } = e.target;
        setFormData({ ...formData, [name]: value });
    }

    function handleSubmit() {
        const addedReview = {
            message: formData.message,
            stars: formData.stars,
            destination: formData.destination_id,
        };
    
        fetch("http://localhost:9292/reviews", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(addedReview),
        })
        .then((r) => r.json())
        .then((data) => postedReview(data));
    }

    return (
    <div className="review_form">
      <form className="form" onSubmit={handleSubmit}>
        <input
          className="message"
          type="text"
          name="message"
          placeholder="Add Message"
          value={formData.message}
          onChange={handleChange}
        ></input>
        <input
          className="stars"
          type="text"
          name="stars"
          placeholder="Add Stars"
          value={formData.stars}
          onChange={handleChange}
        ></input>
        
        <button className="add_review" type="submit">
          Add Review
        </button>
      </form>
    </div>
    )
}

export default AddReview