import React, {useEffect, useState} from 'react';
import { Switch, Route } from "react-router-dom";
import './App.css';
import NavBar from "./components/NavBar"
import About from "./components/About"
import RememberList from "./components/RememberList"
import DateSortBtn from "./components/DateSortBtn"
import SessionRemList from "./components/SessionRemList"


function App() {
  const [page, setPage] = useState("/")
  const [rememberList, setRememberList] = useState("")


  useEffect(() => {
    fetch("http://localhost:9292/remembers/all")
    .then(res => res.json())
    .then(setRememberList)
  },[])


  const sortByDate = () => {
    // console.log("clicked")
    // const sortedList = rememberList.sort((remember1, remember2) => {return (new Date(remember2.created_at) - new Date(remember1.created_at) )})
    // setRememberList(sortedList)
    // console.log(sortedList)
  }


  return (



<div className="App">
      <header><h1 className="sitehead">"I Remember" Creative Writing Tool</h1></header>
      <NavBar onChangePage={setPage} />
      <Switch>
        <Route path="/remembers/user">

          <SessionRemList />

        </Route>
        <Route path="/remembers">
          <DateSortBtn sortByDate={sortByDate}/>
          <RememberList  rememberList={rememberList}/>
          {/* <Form /> */}

        </Route>
      <Route exact path="/">
          <About />
      </Route>
        <Route path="*">
          <h1>404 not found</h1>
        </Route>
      </Switch>
    </div>
  );
}

export default App;
