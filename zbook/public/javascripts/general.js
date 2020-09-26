window.addEventListener("load", function () {
//Animaciones Search Bar
const searchbar = document.querySelector(".searchbar");
const searchbox = document.querySelector(".searchbox");
const searchicon = document.querySelector(".fa-search");

searchicon.addEventListener("click", () => {
    searchbar.classList.toggle("expand");
});
})