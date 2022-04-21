// handle navbar
let currentLocation = document.location.pathname;
let menu = ["menu", "testimoni", "contact"];
let navItem = document.getElementsByClassName("nav-link");

for (let i = 0; i < navItem.length; i++) {
  navItem[i].classList.remove("active");
  navItem[i].removeAttribute("aria-current");
}

let flag = 0;
for (let i = 0; i < menu.length; i++) {
  if (currentLocation.includes(menu[i]) && flag == 0) {
    navItem[i + 1].classList.add("active");
    navItem[i + 1].setAttribute("aria-current", "page");
    flag = 1;
  }
}

if (flag == 0) {
  navItem[0].classList.add("active");
  navItem[0].setAttribute("aria-current", "page");
}
