import MuseumCards from "./MuseumCards"

function MuseumSelection({ museumData }) {

  const mapMuseumData = museumData.map((museum) => <MuseumCards key={museum.id} museum={museum} />)

  return (
    <div >
      {mapMuseumData}
    </div>
  );
}

export default MuseumSelection;