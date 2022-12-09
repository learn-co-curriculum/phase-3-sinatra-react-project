import React from "react"
import {Link, useHistory} from 'react-router-dom';
import LifeLaughLeave from './LifeLaughLeave.gif';



function NavBar() {



    return (
        <div className="nav">
           
            <img className="logo" src={LifeLaughLeave} alt="logo"/>
            
            {/* <h1 className="nav-title">Live, Laugh, Leave</h1> */}
            <Link to="/"><span className="home-btn">Home Sweet Home</span></Link>
            <Link to="/destination"><span className="home-btn">Destinations</span></Link>
            {/* <Link to="/search"><span>Search</span></Link> */}
          
        </div>

    )

}

export default NavBar