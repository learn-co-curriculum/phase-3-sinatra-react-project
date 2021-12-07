import React from 'react';

const MovieList = (props) => {
    return (
        <>
            {props.movies.map((movie, index) => (
                <div className='d-flex'>
                    <div className="row_poster">
                        <div class="flip-container">
                            <div class="flip-this">
                                <img src={movie.Poster} alt='movie'></img>
                            </div>
                        </div>
                    </div>
                </div>

            ))}
        </>
    )
}

export default MovieList;

