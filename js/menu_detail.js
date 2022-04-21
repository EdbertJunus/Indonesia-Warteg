const calculateBtn = document.getElementById("calculate");
const downloadBtn = document.getElementById("download");
const errorCash = document.getElementById("errorCash");
const inputCash = document.getElementById("paymentAmount");
const inputChange = document.getElementById("changeAmount");
const grandTotal = ((document.getElementById("grandTotal") || {}).value || "")
  .replace("Rp. ", "")
  .replaceAll(",", "");
let cashAmount, changeAmount;

//handle cash input form
inputCash?.addEventListener(
  "keyup",
  (e) => {
    cashAmountRaw = e.target.value.replace(/[\D\s\._\-]+/g, "");
    cashAmount = parseInt(cashAmountRaw, 10);
    inputCash.value = Number.isNaN(cashAmount)
      ? ""
      : "Rp. " + cashAmount.toLocaleString();
  },
  false
);

//handle calculate button
calculateBtn?.addEventListener("click", (e) => {
  errorCash.innerText = "";
  if (Number.isNaN(cashAmount) || !cashAmount) {
    inputChange.value = "";
    errorCash.innerText = "Fill the amount to pay";
    return false;
  } else if (parseInt(cashAmount) < parseInt(grandTotal)) {
    inputChange.value = "";
    errorCash.innerText = "Payment amount must be more than grand total price";
    return false;
  }

  changeAmount = parseInt(cashAmount) - parseInt(grandTotal);
  inputChange.value = "Rp. " + changeAmount.toLocaleString();
});

//handle download button file
downloadBtn?.addEventListener("click", (e) => {
  const id = document.getElementsByName("orderIndex");
  const name = document.getElementsByName("orderName");
  const jumlah = document.getElementsByName("orderJumlah");
  const price = document.getElementsByName("orderPrice");
  const total = document.getElementsByName("orderTotal");

  const sumTotal = document.getElementById("grandTotal");

  let data = "";

  for (let i = 0; i < id.length; i++) {
    data +=
      "\r Kode: " +
      id[i].value +
      " \r\n " +
      "\r Nama Makanan: " +
      name[i].value +
      " \r\n " +
      "\r Jumlah: " +
      jumlah[i].value +
      " \r\n " +
      "\r Harga Porsi: " +
      price[i].value +
      " \r\n " +
      "\r Total: " +
      total[i].value +
      " \r\n\n ";
  }

  data +=
    "\n\r Grand Total: " +
    sumTotal.value +
    " \r\n" +
    "\r Cash: " +
    inputCash.value +
    " \r\n" +
    "\r Change: " +
    inputChange.value +
    " \r\n";

  const textBlob = new Blob([data], { type: "text/plain" });
  const fileName = "orderData.txt";

  let newLink = document.createElement("a");
  const url = window.URL.createObjectURL(textBlob);
  newLink.download = fileName;

  newLink.href = url;
  newLink.style.display = "none";
  document.body.appendChild(newLink);
  newLink.click();
});
