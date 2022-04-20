import React, { useState } from 'react';

function NewMuseumForm({addMuseum}) {
    const [name, setName] = useState();
    const [address, setAddress] = useState();
    const [zipcode, setZipcode] = useState();
    const [weburl, setWeburl] = useState();
    const [image, setImage] = useState();
    const [city_id, setCity_id] = useState();
    const [trip_id, setTrip_id] = useState();
    const [operating_hours, setOperating_hours] = useState();


    const handleSubmit = async (e) => {
        // e.preventDefault();
    
        addMuseum({
          name,
          address,
          zipcode,
          weburl,
          image,
          city_id,
          trip_id,
          operating_hours
        })
      };

    return (
        <>
      <h1 className="New Museum">New Museum</h1>
      <form
        onSubmit={handleSubmit}
        className="New Museum Form"
      >
        <fieldset className="">
          <label className="" htmlFor="name">
            Museum Name:
          </label>
          <input
            type="text"
            className=""
            name="name"
            id="name"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="Address">
            Street Address:
          </label>
          <input
            type="text"
            className=""
            name="address"
            id="address"
            value={address}
            onChange={(e) => setAddress(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="zipcode">
            Zip Code:
          </label>
          <input
            type="text"
            className=""
            name="zipcode"
            id="zipcode"
            value={zipcode}
            onChange={(e) => setZipcode(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="image">
            Image Url:
          </label>
          <input
            type="text"
            className=""
            name="image"
            id="image"
            value={image}
            onChange={(e) => setImage(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="city_id">
            City ID:
          </label>
          <input
            type="integer"
            className=""
            name="city_id"
            id="city_id"
            value={city_id}
            onChange={(e) => setCity_id(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="trip_id">
            Trip ID:
          </label>
          <input
            type="integer"
            className=""
            name="trip_id"
            id="trip_id"
            value={trip_id}
            onChange={(e) => setTrip_id(e.target.value)}
          />
        </fieldset>
        <fieldset className="">
          <label className="" htmlFor="operating_hours">
            Operating Hours:
          </label>
          <input
            type="text"
            className=""
            name="operating_hours"
            id="operating_hours"
            value={operating_hours}
            onChange={(e) => setOperating_hours(e.target.value)}
          />
        </fieldset>

        <button
          className=""
          type="submit"
        >
          Add Museum
        </button>
      </form>
    </>
  );
    
}

export default NewMuseumForm;