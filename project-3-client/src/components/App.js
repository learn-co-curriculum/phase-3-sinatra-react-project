import React, { useState, useEffect } from "react";
import { Route, Routes } from "react-router-dom";
import DestinationsContainer from "./DestinationsContainer";
import FavoriteDestinations from "./FavoriteDestinations";
import AddDestinationsForm from "./AddDestinationsForm";
import NavBar from "./NavBar";

function App() {
  const [destinations, setDestinations] = useState([]);
  const [reviews, setReviews] = useState([]);

  useEffect(() => {
    fetch("http://localhost:9292/destinations")
      .then((r) => r.json())
      .then((data) => setDestinations(data));
  }, []);

  useEffect(() => {
    fetch("http://localhost:9292/reviews")
      .then((r) => r.json())
      .then((data) => setReviews(data));
  }, []);

  console.log(reviews);

  function deleteDestination(id) {
    const newDestinations = destinations.filter(
      (destination) => destination.id !== id
    );
    setDestinations(newDestinations);
  }

  return (
    <>
      <NavBar />
      <Routes>
        <Route
          path="/home_destinations"
          element={
            <DestinationsContainer
              reviews={reviews}
              destinations={destinations}
              deleteDestination={deleteDestination}
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
