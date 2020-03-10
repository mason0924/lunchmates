const toggleMap = () => {
  const map = document.getElementById("map");
  const mapListButton = document.getElementById("map-list");
  const list = document.getElementById("list");
  if (mapListButton) {
    map.classList.add("hidden");
    mapListButton.addEventListener('click', (event) => {
      if (mapListButton.innerText === "Map") {
        map.classList.remove("hidden");
        list.classList.add("hidden")
        mapListButton.innerText = "List";
      } else if (mapListButton.innerText === "List") {
        map.classList.add("hidden");
        list.classList.remove("hidden");
        mapListButton.innerText = "Map";
      };
   });
  }
}

export {toggleMap}
