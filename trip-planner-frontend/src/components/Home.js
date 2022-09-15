import React from 'react';
import { Link } from "react-router-dom";

function Home({attractionClick}) {
    
    function handleClick(e) {
        attractionClick(e.target.value)

    }
    
    
    return (
        <div>
            Home Page
            <div>
                <Link exact="true" to="attractions">
                    <button value="concerts" onClick={handleClick}>Ready to rock</button>
                </Link>
            </div>
            <div>
                <Link exact="true" to="/attractions">
                    <button value="eateries" onClick={handleClick}>Ready to fill up</button>
                </Link>
            </div>
        </div>
    )
}

export default Home