<h1> Hello, Welcome to Simple DevOps Project !!   </h1>
<h2> Deploying on a kubernetes using ansible for Valaxy Technologies </h2>
<h2> Glad to see you here </h2>
<h3> MODIFIED THE PAGE </h3>



@import url('https://fonts.googleapis.com/css?family=Playfair+Display:700|Source+Sans+Pro');

$mouse-width: 2.5rem;

*,
*::before,
*::after {
	box-sizing: border-box;
}

body {
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 16px;
	line-height: 1.618;
}

h1,
h2 {
	font-family: 'Playfair Display', serif;
	line-height: 1.2;
	margin-bottom: 1rem;
	letter-spacing: 1px;
}

h1 {
	font-size: 3rem;
	max-width: 35rem;
	text-align: center;
}

h2 {
	font-size: 2.5rem;
}

.hero {
	position: relative;
	min-height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	padding: 12rem 2rem;
	color: white;
	background: {
		image: linear-gradient(to bottom,  rgba(69,72,77,1) 0%,rgba(0,0,0,1) 100%), url('https://source.unsplash.com/random/1920x1080/?sky');
		blend-mode: multiply;
		size: cover;
	}
}

.mouse {
	max-width: $mouse-width;
	width: 100%;
	height: auto;
}

.scroll {
	animation-name: scroll;
	animation-duration: 1.5s;
	animation-timing-function: cubic-bezier(0.650, -0.550, 0.250, 1.500);
	animation-iteration-count: infinite;
	transform-origin: 50% 20.5px;
	will-change: transform, opacity;
	opacity: 1;
}

.scroll-link {
	position: absolute;
	bottom: 1rem;
	left: 50%;
	transform: translateX(-50%);
}

@keyframes scroll {

	0%, 20% {
		transform: translateY(0) scaleY(1);
	}

	100% {
		transform: translateY(36px) scaleY(2);
		opacity: 0;
	}

}

.content {
	min-height: 100vh;
	max-width: 28rem;
	margin: 0 auto;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	text-align: center; 
}
