import React from "react";

function MuseumCards({ museum }) {

    // const [favorited, setFavorited] = useState(false);

    // function handleStar() {
    //     setFavorited(!favorited)
    // };

    return (
        <div className="card">
            <div className="image">
                <img src={museum.image} alt={museum.name} />
            </div>
            <div className="details">
                <strong>{museum.name}</strong>
                <strong>{museum.description} </strong>
                <strong> {museum.address} {museum.city.city_name}, Texas</strong>
                <strong> {museum.weburl}</strong>
                {/* {favorited ? (
                    <button onClick={handleStar} className="emoji-button favorite active">★</button>
                ) : (
                    <button onClick={handleStar} className="emoji-button favorite">☆</button>
                )} */}
            </div>
        </div>
    );
}



export default MuseumCards;