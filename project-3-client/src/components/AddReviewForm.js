import React, { useState } from "react";

function AddReviewForm({postedReview}) {
    const [formData, setFormData] = useState({
        message: "",
        stars: "",
        user_id: "",
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
            user: formData.user_id,
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
        <input
          className="country_name"
          type="text"
          name="country_name"
          placeholder="Add Country Name"
          value={formData.country_name}
          onChange={handleChange}
        ></input>
        <label for="destinations">Pick a Destination:</label>
        <select
          name="destination"
          value={formData.destination_id}
          onChange={handleChange}
        >
          <optgroup label="Destinations">
            <option>North America</option>
            <option>South America</option>
            <option>Europe</option>
            <option>Africa</option>
            <option>Asia</option>
            <option>Oceania</option>
            <option>Antarctica</option>
          </optgroup>
        </select>
        <button className="add_review" type="submit">
          Add Review
        </button>
      </form>
    </div>
    )
}

export default AddReviewForm;