const emailTestimoni = document.getElementById("emailTestimoni");
const testimoniText = document.getElementById("testimoniText");
const testimoniForm = document.getElementById("testimoni-form");
const errorTestimoni = document.getElementById("errorTestimoni");

testimoniForm?.addEventListener("submit", (e) => {
  e.preventDefault();

  errorTestimoni.innerText = "";

  if (emailTestimoni.value.length == 0 || testimoniText.value.length === 0) {
    errorTestimoni.innerText = "Please fill both the email and the testimoni";
    return false;
  }

  if (testimoniText.value.length < 10) {
    errorTestimoni.innerText = "Testimoni must be more than 10 characters";
    return false;
  }
  testimoniText.value = testimoniText.value
    .replace(/(\r\n|\n+|\r)/gm, " ")
    .trim();
  e.currentTarget.submit();
});
