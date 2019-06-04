function activeCheckBoxes() {

  const checkBoxes = document.querySelectorAll('.service-choice')

  const toggleActiveonClick = (event) => {
   event.currentTarget.classList.toggle("active");
  };

  const toggleActiveClass = (event) => {
   event.addEventListener("click", toggleActiveonClick);
  };

  checkBoxes.forEach(toggleActiveClass);

}


export default activeCheckBoxes;

