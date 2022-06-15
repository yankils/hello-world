<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>

    <title>Document</title>
  </head>
  <body>
    <form action="action_page.jsp">
      <div class="container">
        <h1>New user Register for DevOps supercoolinfrastructurreee</h1>
        <p>Please fill in this form to create an account.</p>
        <hr />

        <div class="form-floating mb-3">
          <input
            type="text"
            class="form-control"
            id="floatingInput"
            placeholder="nome"
            name="name"
            required
          />
          <label for="floatingInput">Nome</label>
        </div>

        <div class="form-floating mb-3">
          <input
            type="email"
            class="form-control"
            id="floatingInput"
            name="email"
            placeholder="name@example.com"
            required
          />
          <label for="floatingInput">Email address</label>
        </div>
        <br />
        <hr />
        <br />
        <p>
          By creating an account you agree to our <a href="#">supremacy</a>.
        </p>
        <button type="submit" class="btn btn-primary">Register</button>
      </div>
      <div class="container signin">
        <p>Already have an account? <a href="#">Sign in</a>.</p>
      </div>

      <h1>Thankyou, have fun</h1>
    </form>
  </body>
</html>
