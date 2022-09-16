import React from 'react';
import { Link } from "react-router-dom";

function Home({attractionClick}) {
    
    function handleClick(e) {
        attractionClick(e.target.value)

    }
    
    
    return (
        <div>
            <br></br>
            <h2>Welcome to Trip Planner!</h2>
            <br></br>
            <div>
                <Link exact="true" to="attractions">
                    <button type="button" className="btn btn-primary" value="concerts" onClick={handleClick}>Ready to rock</button>
                </Link>
            </div>
            <br></br>
            <div>
                <Link exact="true" to="/attractions">
                    <button className="btn btn-primary" value="eateries" onClick={handleClick}>Eager to eat</button>
                </Link>
            </div>
        </div>
    )
}

export default Home