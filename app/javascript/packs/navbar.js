const navbar = document.getElementById("theNavbar");
if (navbar) {
	// When the user scrolls down 20px from the top of the document, slide down the navbar
	window.onscroll = function() {scrollNavbarFunction()};
}
function scrollNavbarFunction() {
  if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
    navbar.style.backgroundColor = "white";
    navbar.style.transition = "0.3s";
  } else {
    navbar.style.backgroundColor = "transparent";
  }
}
