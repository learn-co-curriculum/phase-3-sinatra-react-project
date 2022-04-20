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
                <br/>
                <strong>{museum.description} </strong>
                <strong> {`${museum.address} ${museum.city.city_name}, ${museum.zipcode}, Texas`}</strong>
                <br/>
                <a href={`${museum.weburl}`}><strong> Museum's Website </strong></a>
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