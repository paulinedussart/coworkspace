// When the user scrolls down 20px from the top of the document, slide down the navbar
window.onscroll = function() {scrollNavbarFunction()};

function scrollNavbarFunction() {
  if (document.body.scrollTop > 1 || document.documentElement.scrollTop > 1) {
    document.getElementById("theNavbar").style.backgroundColor = "white";
    document.getElementById("theNavbar").style.transition = "0.3s";
  } else {
    document.getElementById("theNavbar").style.backgroundColor = "transparent";
  }
}
