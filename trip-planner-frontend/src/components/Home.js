import React from 'react';

function Home({attractionClick}) {
    
    function handleClick(e) {
        attractionClick(e.target.value)
    }
    
    
    
    return (
        <div>
            Home Page
            <div>
                <button value="concerts" onClick={handleClick}>Ready to rock</button>
            </div>
            <div>
                <button value="eateries" onClick={handleClick}>Ready to fill up</button>
            </div>
        </div>
    )
}

export default Home