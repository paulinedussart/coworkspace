const bookReservation = () => {

const arrivalInput = document.querySelector('.arrival');
const totalPrice = document.querySelector('.resa-total-price');
const days = document.querySelector('.days-total');
const price_per_day = document.querySelector('.price');
const departureInput = document.querySelector('.departure');

  if (departureInput) {

    departureInput.addEventListener('change', (event) => {
      const totalDays = (Date.parse(departureInput.value) - Date.parse(arrivalInput.value)) / 86400000 + 1;
      days.innerText = `${totalDays}`;
      totalPrice.innerText = `${(totalDays * parseInt(price_per_day.innerText, 10))+ 3} $ AUD `;
    });
  }

}

export default bookReservation;
