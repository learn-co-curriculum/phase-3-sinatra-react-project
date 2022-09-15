import React, {useEffect, useState} from 'react';
import { Switch, Route } from "react-router-dom";
import './App.css';
import NavBar from "./components/NavBar"
import About from "./components/About"
import RememberList from "./components/RememberList"
import DateSortBtn from "./components/DateSortBtn"
import SessionRemList from "./components/SessionRemList"
import RememberItemDetails from "./components/RememberItemDetails"
import CategoriesPage from "./components/CategoriesPage"
import CategoryItems from "./components/CategoryItems"




function App() {
  const [page, setPage] = useState("/")
  const [rememberList, setRememberList] = useState("")
  const [editedRowId, setEditedRowId] = useState(null)


  useEffect(() => {
    fetch("http://localhost:9292/remembers/all")
    .then(res => res.json())
    .then(setRememberList)
  },[])



  const deleteRemember = (id) => {
    fetch(`http://localhost:9292/remembers/${id}`, {
      method: "DELETE",
    })
  
      const data = rememberList.filter(i => i.id !== id)
      setRememberList(data)
    
  }

  const updateRemember = (id) => {
    console.log("here")
    setEditedRowId(id)
  }
  











  return (



<div className="App">
      <header><h1 className="sitehead">"I Remember" Creative Writing Tool</h1></header>
      <NavBar onChangePage={setPage} />
      <Switch>
        <Route path="/remembers/user">

          <SessionRemList />

        </Route>
        <Route exact path="/remembers/:id">
          <RememberItemDetails />

        </Route>
        <Route path="/remembers">
          {/* <DateSortBtn sortByDate={sortByDate}/> */}
          <RememberList  rememberList={rememberList} deleteRemember={deleteRemember} updateRemember={updateRemember} editedRowId={editedRowId}/>
          {/* <Form /> */}

        </Route>
        <Route exact path="/categories/:id">
          <CategoryItems />

        </Route>
        <Route path="/categories">
          <CategoriesPage />

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
