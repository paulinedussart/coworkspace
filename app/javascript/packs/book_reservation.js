const bookReservation = () => {

const arrivalInput = document.querySelector('.arrival');
const totalPrice = document.querySelector('.total-price');
const days = document.querySelector('.days');
const price_per_day = document.querySelector('.price');
const departureInput = document.querySelector('.departure');

departureInput.addEventListener('change', (event) => {
  const totalDays = (Date.parse(departureInput.value) - Date.parse(arrivalInput.value)) / 86400000 + 1;
  days.innerText = `Number of days: ${totalDays}`;
  totalPrice.innerText = `Total: $ ${(totalDays * parseInt(price_per_day.innerText, 10))+ 3}`;
});
}

export default bookReservation;
