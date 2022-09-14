import React, { useEffect, useState } from "react";
import ScoreTable from "./ScoreTable";

function AllScores() {
  const [allScores, setAllScores] = useState([]);

  useEffect(() => {
    fetch("http://localhost:9292/topScores")
      .then((res) => res.json())
      .then(setAllScores);
  }, []);

  return (
    <div>
      <h1>TOP SCORES</h1>
      {allScores.length > 0 ? <ScoreTable allScores={allScores} /> : null}
    </div>
  );
}

export default AllScores;
