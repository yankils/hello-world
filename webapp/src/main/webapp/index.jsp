<!DOCTYPE html>
<html>
<head>
<title> Bruno's test home Page </title>
</head>
<body>
        <body style=text-align:center;background-color:#FFC300;font-weight:400;font-size:15px;font-family:Helvetica,Arial,sans-serif>
	<marquee><img src="https://www.docker.com/wp-content/uploads/2022/03/Moby-logo.png"></marquee>
        <h1> Welcome to Bruno's custom webpage hosted in a Docker container in a jenkins server. </h1>
        <p> This container was Deployed on: <div id="date"></div></p>
<script>
        var date = new Date();
        document.getElementById("date").innerHTML=date.toLocaleString();
</script>
</body>
</html>
