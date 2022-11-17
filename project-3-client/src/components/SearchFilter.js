import React from "react";

function SearchFilter({ search, handleSearch }) {
  return (
    <div className="search">
      <input
        className="search input"
        type="text"
        placeholder="Search for a City!"
        value={search}
        onChange={handleSearch}
      ></input>
    </div>
  );
}

export default SearchFilter;
