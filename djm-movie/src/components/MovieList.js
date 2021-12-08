import React, { useState } from 'react';
import StarRating from './StarRating';



const MovieList = (props) => {
    // const [showBack, setShowBack] = useState(false);

    function handleClick() {
         console.log("CLICK")
        //   setShowBack(!showBack);
        }
      

    return (
        <>

            {props.movies.map((movie, index) => (

                <div className='d-flex'>
                    <div className="row_poster">
                                <img src={movie.Poster} alt='movie' onClick={handleClick}></img>
                               
                                <StarRating />
                            </div>
                        </div>
            ))}
        </>
    )
}


export default MovieList;