import React from "react";

function PlayerTable ({players, handleSearch}) {

    

    return(
        <div className="player_table">
            <div>
                <h1 className="table_title">Player Ranks</h1>
                <input  className="table_input" type="text" placeholder="Search Player..." onChange={handleSearch}></input>
            </div>
            <table border="3" className="play_table">
                <thead>
                    <th>UserNames</th>
                    <th>Rank</th>
                </thead>
                <tbody >
                    {players.map(player => <tr key={player.id}><td className="player_ranks">{player.username}</td><td>{player.rank}</td></tr>)}
                </tbody>
            </table>
        </div>
    )
}

export default PlayerTable;