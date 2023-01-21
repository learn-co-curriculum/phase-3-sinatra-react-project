import './App.css';
import React, {useEffect, useState} from "react";
import PersonDetail from './PersonDetail';
import PurchasedTickets from './PurchasedTickets';
import ConcertList from './ConcertList';
import Person from './Person.js';

function App() {
  const initialPerson = {name: "", email: "", password: "", tickets: []}
  const [personList, setPersonList] = useState([])
  const [concertList, setConcertList] = useState([])
  const [currentPerson, setCurrentPerson] = useState(initialPerson)

  useEffect(() => {
    fetch("http://localhost:9292/concerts")
      .then(r => r.json())
      .then(setConcertList)
    fetch("http://localhost:9292/users")
      .then(resp => resp.json())
      .then(people => {
        setPersonList(people)
        setCurrentPerson(people[0])
      })
  }, [])


  function showPerson(personName) {
    const selectPerson = personList.filter((person) => (person.name === personName))
    setCurrentPerson(selectPerson[0])
  }
  return (
    <div className="App">
      <header className="App-header">
      <PersonDetail personList={personList} showPerson={showPerson}/>
      <PurchasedTickets person={currentPerson} concertList={concertList}/>
      <ConcertList concertList={concertList} currentPerson={currentPerson} setConcertList={setConcertList} setCurrentPerson={setCurrentPerson}/>
      <Person />
      </header>
    </div>
  );
}

export default App;
