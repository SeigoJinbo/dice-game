import consumer from "./consumer";

const initGameCable = () => {
  const gameContainer = document.getElementById("game");

  if (gameContainer) {
    const id = gameContainer.dataset.gameId;

    consumer.subscriptions.create(
      { channel: "GameChannel", id: id },
      {
        received(data) {
          fetch(`/games/${id}`, { headers: { accept: "application/json" } })
          console.log(data); // called when data is broadcast in the cable
        },
      }
    );
  }
};

export { initGameCable };
