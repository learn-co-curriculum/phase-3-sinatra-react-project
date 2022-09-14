import React from "react";

function ScoreTable({ allScores }) {
  return (
    <div>
      <table>
        <tr>
          <th>User</th>
          <th>Score</th>
        </tr>
        {allScores.map((score) => (
          <tr key={score[1].id}>
            <td>{score[1].name}</td>
            <td>{score[0].score}</td>
          </tr>
        ))}
      </table>
    </div>
  );
}

export default ScoreTable;
