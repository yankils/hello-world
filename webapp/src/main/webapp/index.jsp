<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/w3css/3/w3.css">
<body>

<!-- Navigation -->
<nav class="w3-bar w3-black">
  <a href="#home" class="w3-button w3-bar-item">Home</a>
  <a href="#band" class="w3-button w3-bar-item">Band</a>
  <a href="#tour" class="w3-button w3-bar-item">Tour</a>
  <a href="#contact" class="w3-button w3-bar-item">Contact</a>
</nav>

<!-- Slide Show -->
<section>
  <img class="mySlides" src="img_band_la.jpg"
  style="width:100%">
  <img class="mySlides" src="img_band_ny.jpg"
  style="width:100%">
  <img class="mySlides" src="img_band_chicago.jpg"
  style="width:100%">
</section>

<!-- Band Description -->
<section class="w3-container w3-center w3-content" style="max-width:600px">
  <h2 class="w3-wide">THE BAND</h2>
  <p class="w3-opacity"><i>We love music</i></p>
  <p class="w3-justify">We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</section>

<!-- Band Members -->
<section class="w3-row-padding w3-center w3-light-grey">
  <article class="w3-third">
    <p>John</p>
    <img src="img_bandmember.jpg" alt="Random Name" style="width:100%">
    <p>John is the smartest.</p>
  </article>
  <article class="w3-third">
    <p>Paul</p>
    <img src="img_bandmember.jpg" alt="Random Name" style="width:100%">
    <p>Paul is the prettiest.</p>
  </article>
  <article class="w3-third">
    <p>Ringo</p>
    <img src="img_bandmember.jpg" alt="Random Name" style="width:100%">
    <p>Ringo is the funniest.</p>
  </article>
</section>

<script>
// Automatic Slideshow - change image every 3 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}
  x[myIndex-1].style.display = "block";
  setTimeout(carousel, 3000);
}
</script>

</body>
</html>
