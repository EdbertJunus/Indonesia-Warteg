const foodNameCheckbox = document.getElementsByName("foodName");
const foodPrice = document.getElementsByName("foodPrice");
const foodTotal = document.getElementsByName("foodTotal");
const orderButton = document.getElementById("order");
const menuForm = document.getElementById("menu-form");
let errorStatus = false;

// Handle Menu order Form
menuForm?.addEventListener("submit", (e) => {
  e.preventDefault();
  errorStatus = false;

  let numberOfCheckbox = 0;

  for (let i = 0; i < foodNameCheckbox.length; i++) {
    if (foodNameCheckbox[i].checked) {
      numberOfCheckbox += 1;
      if (!foodTotal[i].value) {
        alert("Please Fill Jumlah for " + foodNameCheckbox[i].value);
        errorStatus = true;
      }
    } else {
      if (foodTotal[i].value) {
        alert("Please Tick The Checkbox for " + foodNameCheckbox[i].value);
        errorStatus = true;
      }
    }
  }

  if (numberOfCheckbox == 0) {
    alert("Please Choose Minimal One Menu");
    errorStatus = true;
  }

  if (errorStatus) return false;

  //submit form
  e.currentTarget.submit();
});
