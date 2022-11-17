import React, {useState} from "react";
import SearchFilter from "./SearchFilter";
import OrderBy from "./OrderBy";
//import DestinationCards from "./DestinationCards";
import Destination from "./Destination"



function DestinationsContainer({

  destinations,
  //setDestinations,
  // search,
  // handleSearch,
}) {

  const [search, setSearch] = useState("");

  //console.log(destinations)

  const filteredDestinations = destinations.filter((destination) =>
  destination.city_name.toLowerCase().includes(search.toLowerCase())
)

  const eachDestination = filteredDestinations.map((destination) => (
    <Destination destination={destination} key={destination.id}/>
  ))

  function handleSearch(e) {
    setSearch(e.target.value);
  }

  return (
    <div>
      <SearchFilter search={search} handleSearch={handleSearch} />
      <OrderBy />
      {eachDestination}
      {/* <Destination
        destinations={eachDestination}
        //setDestinations={setDestinations}
      /> */}
    </div>
  );
}

export default DestinationsContainer;
