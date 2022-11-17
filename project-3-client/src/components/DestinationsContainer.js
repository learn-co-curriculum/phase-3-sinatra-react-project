import React, { useState } from "react";
import SearchFilter from "./SearchFilter";
import OrderBy from "./OrderBy";
import Destination from "./Destination";

function DestinationsContainer({ destinations, deleteDestination }) {
  const [search, setSearch] = useState("");

  const filteredDestinations = destinations.filter((destination) =>
    destination.city_name.toLowerCase().includes(search.toLowerCase())
  );

  const eachDestination = filteredDestinations.map((destination) => (
    <Destination handleDelete={handleDelete} destination={destination} key={destination.id} />
  ));

  function handleSearch(e) {
    setSearch(e.target.value);
  }

  function handleDelete(id) {
    fetch(`http://localhost:9292/destinations/${id}`, {
      method: "DELETE",
    }).then(() => deleteDestination(id));
  }

  return (
    <div>
      <SearchFilter search={search} handleSearch={handleSearch} />
      <OrderBy />
      {eachDestination}
    </div>
  );
}

export default DestinationsContainer;
