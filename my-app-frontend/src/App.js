//this stuff was already there, not sure if we should keep it yet
// import logo from './logo.svg';
// import './App.css';

// function App() {
//   return (
//     <div className="App">
//       <header className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <p>
//           Edit <code>src/App.js</code> and save to reload.
//         </p>
//         <a
//           className="App-link"
//           href="https://reactjs.org"
//           target="_blank"
//           rel="noopener noreferrer"
//         >
//           Learn React
//         </a>
//       </header>
//     </div>
//   );
// }

// export default App;




import React, { useEffect, useState } from 'react';
import './App.css';
//import Nav from './Components/Nav';
import Form from './Components/Form';
import Search from './Components/Search';
//import { BrowserRouter as Router, Switch, Route } from "react-router-dom";
import Home from './Components/Home'




function App() {

  let [songs, setSongs] = useState([])

  useEffect(() => {
    fetch("http://localhost:8004/songs")
    .then(response => response.json())
    .then(data => setSongs(data))
  }, [])
 

  // return (
  //   <Router>
  //     <div className="App">
  //       <Nav />
  //       <Switch>
  //         <Route exact path="/">
  //           <Home songs={songs}/>
  //         </Route>
  //         <Route path="/form">
  //           <Form songs={songs} setSongs={setSongs}/>
  //         </Route>
  //         <Route path="/search">
  //           <Search songs={songs}/>
  //         </Route>
  //       </Switch>
  //     </div>
  //   </Router>
  // );
}

export default App;

