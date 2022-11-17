import React, { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import DestinationsContainer from "./DestinationsContainer";
import FavoriteDestinations from "./FavoriteDestinations";
import AddDestinationsForm from "./AddDestinationsForm";
import NavBar from "./NavBar";

function App() {
  const [destinations, setDestinations] = useState([]);
  //const [search, setSearch] = useState("");

  useEffect(() => {
    fetch("http://localhost:9292/destinations")
      .then((r) => r.json())
      .then((data) => setDestinations(data));
  }, []);

//   function handleSearch(e) {
//     setSearch(e.target.value);
//   }


//   const filteredDestinations = destinations ? destinations.filter((destination) =>
//   destination.name.toLowerCase().includes(search.toLowerCase())
// ) : null

// console.log(destinations)

  return (
    <>
      <NavBar />
      <Routes>
        <Route
          path="/home_destinations"
          element={
            <DestinationsContainer
              destinations={destinations}
              // search={search}
              // handleSearch={handleSearch}
            />
          }
        />
        <Route path="/add_new_destinations" element={<AddDestinationsForm />} />
        <Route
          path="/favorite_destinations"
          element={<FavoriteDestinations />}
        />
      </Routes>
    </>
  );
}

export default App;
