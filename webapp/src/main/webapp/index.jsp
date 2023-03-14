<form action="action_page.php">
  <div class="container">
    <h1> New user Register for DevOps learning</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>


    <label for="NAME"><b>Enter the Name</b></label>
    <input type="text" placeholder="ENTER THE NAME" name="name" id="name" required>

    <br>


    <label for="EMAIL"><b>Enter Email</b></label>
    <input type="text" placeholder="ENTER THE MOBILE NUMBER" name="mobile" id="mobile" required>
    
    <br>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="ENTER THE PASSWORD" name="psw" id="psw" required>
    
    <br>

    <label for="psw-repeat"><b>Repeat Password</b></label>
    <input type="password" placeholder="REPEAT PASSWORD" name="psw-repeat" id="psw-repeat" required>
    <hr>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="#">Sign in</a>.</p>
  </div>
</form>
