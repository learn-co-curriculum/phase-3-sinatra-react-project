import React from "react";

function Home () {

    return(
        <div>
            <h1 className="home_header">WELCOME TO THE WORLD OF GAMING</h1>
            <img className="home_image" src="https://www.mobigaming.com/wp-content/uploads/2020/04/13863.jpg" alt="gamer" />

            <p className="summary">
                Explore many games inside of our directory and feel free to add some of your own favorite games while you're at it. 
                You can also check out our Player Rank Chart to see who is atop the leaderboard.
            </p>
        </div>
    )
}

export default Home;