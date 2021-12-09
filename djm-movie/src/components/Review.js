import React, { useState, useEffect } from 'react'
// import { v4 as uuidv4 } from 'uuid';

function Review() {
    const [movies, setMovies] = useState([])
    // const [shows, setShows] = useState([])
    const [formData, setFormData] = useState({

        movie_id: "",
        show_id: "",
        comment: "",
        rating: "",

    })
    const addReview = (newReview) => {
        setMovies([...movies, newReview])
        console.log(movies)
    }

    useEffect(() => {
        fetch()
            .then(resp => resp.json())
            .then(data => setMovies(data))
    }, [])

    const handleSubmit = (e) => {
        e.preventDefault()
        const newReview = {
            movie_id: formData.movie_id,
            show_id: formData.show_id,
            comment: formData.comment,
            rating: formData.rating,
            // id: uuidv4()
        }
        fetch('', {
            method: "POST",
            headers:  { "Content-type": "application/json" },
            body: JSON.stringify(newReview)
        })
            .then(resp => resp.json())
            .then(data => addReview(data))
        setFormData({

            movie_id: "",
            show_id: "",
            comment: "",
            rating: "",

        })

    }

    const handleOnChange = (e) => {
        console.log(formData)
        setFormData({ ...formData, [e.target.name]: e.target.value })
    }
    const handleOnClick = () => {
        console.log("CLICK")
    }

    return (

        <ReviewFormContainer className="add-review" >
        <h2>Review Movie HERE!</h2>
        <form onSubmit = {handleSubmit}>
          <input onChange={handleOnChange} type="text" name="movie_id" placeholder="" value={formData.movie_id} />
          <input onChange={handleOnChange} type="text" name="show_id" placeholder="" value={formData.show_id}/>
          <input onChange={handleOnChange} type="text" name="comment"  placeholder="" value={formData.comment}/>
          <input onChange={handleOnChange} type="text" name="rating"  placeholder="" value={formData.rating}/>
          <button  onClick={handleOnClick} type="submit">Add Review!</button>
        </form>
        </ReviewFormContainer>
            )
        }

export default Review