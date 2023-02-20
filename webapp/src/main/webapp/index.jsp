


<!DOCTYPE html>
<html>
  <head>
    <title>Travel Booking Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, p {
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      line-height: 55px;
      font-size: 55px;
      color: #fff;
      z-index: 2;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 30px 0 #a37547;
      }
      .banner {
      position: relative;
      height: 230px;
      background-image: url("/uploads/media/default/0001/02/3dd647f39593e88f45f61aaac6ff3027dce15506.jpeg");
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4);
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      select {
      width: 100%;
      padding: 7px 0;
      background: transparent;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #a37547;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 6px 0 #a37547;
      color: #a37547;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid #a37547;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid #a37547;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px;
      background: #6b4724;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      box-shadow: 0 0 18px 0 #3d2914;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .city-item input {
      width: calc(50% - 20px);
      }
      .city-item select {
      width: calc(50% - 8px);
      }
      }
    </style>
  </head>
  <body>
    <div class="testbox">
    <form action="/">
      <div class="banner">
        <h1>Travel Booking Form</h1>
      </div>
      <div class="item">
        <p>Passenger contact name</p>
        <div class="name-item">
          <input type="text" name="name" placeholder="First" />
          <input type="text" name="name" placeholder="Last" />
        </div>
      </div>
      <div class="item">
        <p>Email</p>
        <input type="email" name="email"/>
      </div>
      <div class="item">
        <p>Phone</p>
        <input type="text" name="phone" placeholder="### ### ####"/>
      </div>
      <div class="item">
        <p>Address</p>
        <input type="text" name="name" placeholder="Street address" required/>
        <input type="text" name="name" placeholder="Street address line 2" required/>
        <div class="city-item">
          <input type="text" name="name" placeholder="City" required/>
          <input type="text" name="name" placeholder="Region" required/>
          <input type="text" name="name" placeholder="Postal / Zip code" required/>
          <select required>
            <option selected value="" disabled>Country</option>
            <option value="1">Russia</option>
            <option value="2">Germany</option>
            <option value="3">France</option>
            <option value="4">Armenia</option>
            <option value="5">USA</option>
          </select>
        </div>
      </div>
      <div class="item">
        <p>Total number of adults</p>
        <input type="text" name="adults"/>
      </div>
      <div class="item">
        <p>Adults' names</p>
        <textarea rows="3"></textarea>
        Yes
      </div>
      <div class="item">
        <p>Total number of children</p>
        <input type="text" name="adults"/>
      </div>
      <div class="item">
        <p>Children names and ages</p>
        <textarea rows="3"></textarea>
      </div>
      <div class="item">
        <p>Type of travel</p>
        <select required>
          <option value="">Business</option>
          <option value="1">Adventure</option>
          <option value="2">Cultural</option>
          <option value="3">Cruising</option>
          <option value="4">Active mobility</option>
          <option value="5">Active vacation</option>
          <option value="6">Quiet vacation</option>
          <option value="7">Package tour</option>
          <option value="8">Creative trip</option>
          <option selected value="9">Honeymoon</option>
        </select>
      </div>
      <div class="item">
        <p>Destination</p>
        <input type="text" name="destination"/>
      </div>
      <div class="item">
        <p>Preferred hotel / resort</p>
        <input type="text" name="hotel"/>
      </div>
      <div class="item">
        <p>Number of rooms</p>
        <input type="text" name="number"/>
      </div>
      <div class="item">
        <p>Size of group</p>
        <input type="text" name="size"/>
      </div>
      <div class="item">
        <p>King / double / suite / penthouse</p>
        <input type="text" name="room"/>
      </div>
      <div class="question">
        <p>Transportation to and from hotel</p>
        <div class="question-answer">
          <div>
            <input type="radio" value="none" id="radio_1" name="question1"/>
            <label for="radio_1" class="radio"><span>Yes</span></label>
          </div>
          <div>
            <input type="radio" value="none" id="radio_2" name="question1"/>
            <label for="radio_2" class="radio"><span>No</span></label>
          </div>
        </div>
      </div>
      <div class="item">
        <p>Estimated trip amount</p>
        <input type="number" name="amount" placeholder="USD 0.00"/>
      </div>
      <div class="question">
        <p>Is anyone traveling over the Age of 55?</p>
        <div class="question-answer">
          <div>
            <input type="radio" value="none" id="radio_3" name="question2"/>
            <label for="radio_3" class="radio"><span>Yes</span></label>
          </div>
          <div>
            <input type="radio" value="none" id="radio_4" name="question2"/>
            <label for="radio_4" class="radio"><span>No</span></label>
          </div>
        </div>
        <div class="question">
          <p>Does anyone traveling have a military background?</p>
          <div class="question-answer">
            <div>
              <input type="radio" value="none" id="radio_5" name="question3"/>
              <label for="radio_5" class="radio"><span>Yes</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_6" name="question3"/>
              <label for="radio_6" class="radio"><span>No</span></label>
            </div>
          </div>
        </div>
        <div class="item">
          <p>Special instructions</p>
          <textarea rows="3"></textarea>
        </div>
        <div class="item">
          <p>Activities: spa, golf, excursion, event ticket, shows, etc.</p>
          <textarea rows="3"></textarea>
        </div>
        <div class="question">
          <p>Include travel insurance</p>
          <div class="question-answer">
            <div>
              <input type="radio" value="none" id="radio_7" name="question4"/>
              <label for="radio_7" class="radio"><span>Yes</span></label>
            </div>
            <div>
              <input type="radio" value="none" id="radio_8" name="question4"/>
              <label for="radio_8" class="radio"><span>No</span></label>
            </div>
          </div>
        </div>
        <div class="btn-block">
          <button type="submit" href="/">Book</button>
        </div>
    </form>
    </div>
  </body>
</html>
