let login = document.querySelector(".login");
document.querySelector("#user-btn").onclick = () => {
  login.classList.toggle("active");
};

let cart = document.querySelector(".cart");
document.querySelector("#cart-btn").onclick = () => {
  cart.classList.toggle("active");
};

let navbar = document.querySelector(".navbar");
document.querySelector("#menu-btn").onclick = () => {
  navbar.classList.toggle("active");
};

let wallet = document.querySelector(".wallet");
document.querySelector("#wallet-btn").onclick = () => {
  wallet.classList.toggle("active");
};

var swiper= new Swiper(".slider", {
  loop: true,

  spaceBetween: 20,

  breakpoints: {
    0: {
      slidesPerView: 1,
    },
    768: {
      slidesPerView: 2,
    },
    1020: {
      slidesPerView: 3,
    },
  },
});
