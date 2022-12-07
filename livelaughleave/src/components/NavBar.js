import React from "react"
import {Link, useHistory} from 'react-router-dom'



function NavBar() {

    const history = useHistory()

    const goForm = () => {
        history.push('/NewReviewForm')
    }


    return (
        <div className="nav">
            <ul className="navtitle">
            {/* <img href="/liveloveleave.gif"/> */}
            <h1 className="nav-title">Live, Laugh, Leave</h1>
            <Link to="/"><span>Home Sweet Home</span></Link>
            <Link to="/destination"><span>Destinations</span></Link>
            <Link to="/search"><span>Search</span></Link>
            <Link to="/reviews"><span>Reviews</span></Link>
            </ul>
        </div>

    )

}

export default NavBar