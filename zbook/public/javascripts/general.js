window.addEventListener("load", function () {
    //Animaciones Search Bar
    const searchbar = document.querySelector(".searchbar");
    const searchbox = document.querySelector(".searchbox");
    const searchicon = document.querySelector(".fa-search");

    searchicon.addEventListener("click", () => {
        searchbar.classList.toggle("expand");
    });

    // Logo Hover
    const logo = document.querySelector(".logo");
    const logoimg = document.querySelector(".logo img");

    logo.onmouseover = function () {
      logoimg.setAttribute("src", "/images/logo1hov.png");
    };

    logo.onmouseout = function () {
      logoimg.setAttribute("src", "/images/logo1.png");
    };
})