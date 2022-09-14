import React from 'react';


function AttractionsForm({attractionType}) {
    return (
        <div>
            {attractionType === "concerts" ? <h1>Add A Concert</h1> : <h1>Add An Eatery</h1>}
                    {/*city form*/}
                    <form>
                        <label>City</label>
                        <input type="text" name="city"/>
                        <label>State</label>
                        <input type="text" name="state"/>
                    </form>
            {attractionType === "concerts" ?
                <div>
            
                    {/* concert form */}
                    <form>
                        <label>Date</label>
                        <input type="text" name="Date"/>
                        <label>Venue</label>
                        <input type="text" name="Venue"/>
                        <label>Venue Type</label>
                        <input type="text" name="Venue Type"/>
                    </form>
                    {/*band form*/}
                    <form>
                        <label>Band Name</label>
                        <input type="text" name="name"/>
                        <label>Genre</label>
                        <input type="text" name="genre"/>
                    </form>
                </div>
                :
                <div>
                {/*eatery form*/}
                    <form>
                        <label>Name</label>
                        <input type="text" name="Name"/>
                        <label>Downtown?</label>
                        <input type="text" name="downtown?"/>
                        <label>Cuisine Type</label>
                        <input type="text" name="cuisine type"/>
                        <label>Address</label>
                        <input type="text" name="Address"/>
                    </form>
                </div>
            }
        </div>
    )
}

export default AttractionsForm
