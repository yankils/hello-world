// Variables
$mainColor: #1E90FF; // dodgerblue
$indigo: #4B0082;

// Placeholder variables
%link {
  color: $mainColor;
  transition: color .25s;
  &:focus,
  &:hover {color: darken($mainColor, 10%);}
  &:active {color: lighten($mainColor, 5%);}
}

/*Typography*/
html {font: 16px "Ubuntu", sans-serif;}
/*Layout*/
html,
body {
  width: 100%;
  height: 100%;
}
*,
*:before,
*:after {box-sizing: border-box;}
.wrapper {height: 100%;}
section {padding: 1em 0;}
ul {
  margin: 0;
  padding: 0;
  list-style-type: none;
}
a {
  text-decoration: none;
  transition: all .25s;
}
.row,
nav {
  margin: auto;
  width: 100%;
  max-width: 60em;/*960px*/
}
.col-2 {
  display: inline-block;
  width: 49%;
  min-width: 300px;
  vertical-align: top;
}
@media screen and (max-width: 500px) {
  .col-2 {
    display: block;
    margin: auto;
    width: 90%;
  }
}
.col-4 {
  display: inline-block;
  width: 24.7%;
  min-width: 230px;
  vertical-align: top;
}
@media screen and (max-width: 500px) {
  .col-4 {
    display: block;
    margin: auto;
    width: 90%;
  }
}
/*Navigation*/
header {
  float: left;
  position: relative;
  width: 100%;
  background: $mainColor;
  box-shadow: 0px 1px 3px #333;
  z-index: 1;
}
.fa-gamepad {
  display: block;
  float: left;
  margin-left: .25em;
  font-size: 3em;
  color: #fff;
  cursor: pointer;
}
@media screen and (max-width: 500px) {
  .fa-gamepad {
    clear: both;
    margin-left: 0;
    width: 100%;
    text-align: center;
  }
}
input {display: none;}
input:checked + .nav {display: flex;}
.nav {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: flex-end;
}
@media screen and (max-width: 500px) {
  .nav {
    display: none;
    flex-direction: column;
    width: 100%;
  }
  .nav li {text-align: center;}
}
.nav li:first-child a {background: darken($mainColor, 5%);}
.nav a,
label {
  text-align: center;
  color: #fff;
  &:focus,
  &:hover {background: darken($mainColor, 5%);}
  &:active {background: lighten($mainColor, 2%);}
}
.nav a {
  display: block;
  padding: 1em .75em;
}
label.fa {
  display: none;
  font-size: 2.5em;
  cursor: pointer;
}
@media screen and (max-width: 500px) {
  label.fa {display: block;}
}
/*Intro*/
.sec-intro {padding-top: 0;}
.sec-intro .row {max-width: 100%;}
.sec-intro .row > img {
  float: left;
  width: 50%;
  height: 480px;
  vertical-align: top;
}
@media screen and (max-width: 500px) {
  .sec-intro .row > img {width: 100%}
}
.sec-intro .col-4 {
  margin-right: -3.5px;
  width: 25%;
}
.sec-intro .col-4 img {height: 200px;}
@media screen and (max-width: 930px) {
  .sec-intro .col-4 {width: 50%;}
  .sec-intro .col-4:nth-child(3),
  .sec-intro .col-4:last-child {margin-top: -3px;}
}
@media screen and (max-width: 500px) {
  .sec-intro .col-4 {
    display: inline-block;
    width: 100%;
  }
  .sec-intro .col-4:nth-child(2),
  .sec-intro .col-4:nth-child(3),
  .sec-intro .col-4:last-child {margin-top: -3px;}
}
.sec-intro img {width: 100%;}
/*Posts*/
.sec-posts {margin-bottom: 1em;}
.sec-posts .row:first-child {border-top: .1em dashed #aaa;}
@media screen and (max-width: 622px) {
  .sec-posts .col-2 {
    display: block;
    margin: auto;
    width: 80%;
  }
}
.sec-posts h2 {padding: 0 .25em;}
@media screen and (max-width: 622px) {
  h2 {text-align: center;}
}
.post {padding: 0 .5em;}
.post img {
  float: left;
  margin-right: .5em;
  width: 40%;
  height: 143px;
}
.post h1 {
  display: inline;
  font-size: 100%;
  cursor: pointer;
  @extend %link;
}
.post p {
  padding-right: .25em;
  font-size: 90%;
  text-align: justify;
}
.post span {float: right;}
.post i {
  cursor: pointer;
  @extend %link;
}
.post i:first-child {margin-right: .5em;}
button {
  margin-left: .5em;
  padding: .5em 0;
  width: 100px;
  text-transform: uppercase;
  background: #fff;
  color: $mainColor;
  border: .1em solid;
  outline: 0;
  transition: color .25s;
  &:focus,
  &:hover {color: darken($mainColor,10%);}
  &:active {color: lighten($mainColor, 5%);}
}
@media screen and (max-width: 500px) {
  button {
    display: block;
    margin: auto;
  }
}
/*Games*/
.sec-games {
  background: #222;
  color: #fff;
}
.sec-games .row {margin-bottom: 2em;}
.sec-games h1 {text-align: center;}
.sec-games .col-4 {padding: 0 .5em;}
@media screen and (max-width: 970px) {
  .sec-games .col-4 {width: 49%;}
}
@media screen and (max-width: 500px) {
  .sec-games .col-4 {margin-bottom: 1.5em;}
}
.sec-games img {
  width: 100%;
  height: 190px;
}
.sec-games h2 {
  margin: .1em 0;
  font-size: 105%;
  text-align: center;
  color: #C1171C;
  transition: color .25s;
}
.sec-games a {transition: color .25s;}
.sec-games a:hover h2 {color: darken(#C1171C, 10%);}
.sec-games a:active h2 {color: lighten(#C1171C, 1%);}
.sec-games p {
  margin-top: .5em;
  font-size: 80%;
  text-align: center;
}
/*Footer*/
.footer-outer {
  padding: 1em 0;
  background: $mainColor;
  color: #fff;
}
footer .row:first-child a {
  color: #fff;
  &:focus,
  &:hover {color: #333;}
  &:active {color: #eee;}
}
footer .row:last-child {padding: .5em;}
@media screen and (max-width: 970px) {
  footer .col-4 {
    width: 49%;
    text-align: center;
  }
}
@media screen and (max-width: 500px) {
  ul {text-align: center;}
}
.copy {font-size: .8em;font-style: italic;}
.soc-media {
  float: right;
}
.soc-media li {float: left;}
.soc-media li:not(:last-child) {margin-right: .5em;}
.soc-media a {
  display: block;
  font-size: 130%;
  @extend %link;
}

<div class="fullscreen nopadding">
  <div id="header">
    <img src="https://blog.codepen.io/wp-content/uploads/2012/06/Button-Black-Small.png" width="50px" />
    <ul>
      <li>Home</li>
      <li>About</li>
    </ul>
  </div>
  <div class="header">
    <h1>Lorem Ipsum</h1>
  </div>
</div>

<div class="white nopadding more">
  <a id="more">&#x25BC; More &#x25BC;</a>
</div>

<div class="white">
  <a id="test"></a>
  <h1>Dolor Sit Amet</h1>
  <img class="floatleft" src="http://www.2020site.org/trees/images/PineNeedles.jpg" />
  <p><a href="">Lorem ipsum</a> dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem facilisis semper ac in est.</p>
  <img class="floatright" src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Ilex-aquifolium_%28Europaeische_Stechpalme-1.jpg/220px-Ilex-aquifolium_%28Europaeische_Stechpalme-1.jpg" />
  <p>Suspendisse lectus leo, consectetur in tempor sit amet, placerat quis neque. Etiam luctus porttitor lorem, sed suscipit est rutrum non. Curabitur lobortis nisl a enim congue semper. Aenean commodo ultrices imperdiet. Vestibulum ut justo vel sapien venenatis tincidunt. Phasellus eget dolor sit amet ipsum dapibus condimentum vitae quis lectus. Aliquam ut massa in turpis dapibus convallis. Praesent elit lacus, vestibulum at malesuada et, ornare et est. Ut augue nunc, sodales ut euismod non, adipiscing vitae orci. Mauris ut placerat justo. Mauris in ultricies enim. Quisque nec est eleifend nulla ultrices egestas quis ut quam. Donec sollicitudin lectus a mauris pulvinar id aliquam urna cursus. Cras quis ligula sem, vel elementum mi. Phasellus non ullamcorper urna.</p>
</div>

<div class="semitrans">
  <h1>Et Cetera...</h1>
  <p>Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae, sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare, ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem nunc vel mi.</p>
  <h2>Sub est.</h2>
  <p>Nam dictum, odio nec pretium volutpat, arcu ante placerat erat, non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum et, tincidunt et orci. Fusce eget orci a orci congue vestibulum. Ut dolor diam, elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar tellus gravida ornare.</p>
  <h2>Sed non.</h2>
  <p>Sed et erat faucibus nunc euismod ultricies ut id justo. Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt, purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel volutpat elit. Nam sagittis nisi dui.</p>
</div>

<div class="dark">
  <p>This pen was made by <a href="https://codepen.io/flyingfisch">flyingfisch</a>. Check out my <a href="http://toppagedesign.com">website</a>!</p>
</div>
