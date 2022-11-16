import React from "react";
import SearchFilter from "./SearchFilter";
import OrderBy from "./OrderBy";
import DestinationCards from "./DestinationCards";

function DestinationsContainer({ destinations, setDestinations }) {
  return (
    <div>
      <SearchFilter />
      <OrderBy />
      <DestinationCards
        destinations={destinations}
        setDestinations={setDestinations}
      />
    </div>
  );
}

export default DestinationsContainer;
