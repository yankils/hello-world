<!DOCTYPE html>
<html>
<body>

<h1>The template Element</h1>

<p>Click the button below to display the hidden content from the template element.</p>

<button onclick="showContent()">Show hidden content</button>

<template>
  <h2>Flower</h2>
  <img src="img_white_flower.jpg" width="214" height="204">
</template>

<script>
function showContent() {
  let temp = document.getElementsByTagName("template")[0];
  let clon = temp.content.cloneNode(true);
  document.body.appendChild(clon);
}
</script>

</body>
</html>
