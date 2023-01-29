<!DOCTYPE html>
<html>
  <head>
    <title>Course Evaluation Survey Sample</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
      html, body {
      min-height: 100%;
      }
      body, input { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1, h4 {
      font-weight: 400;
      }
      h4 {
      margin: 22px 0 4px;
      }
      h5 {
      text-transform: uppercase;
      color: #095484;
      }
      .main-block {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 3px;
      }
      form {
      width: 100%;
      padding: 20px;
      box-shadow: 0 2px 5px #ccc; 
      background: #fff;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      border-radius: 3px;
      border: 1px solid #ccc;
      vertical-align: middle;
      }
      textarea {
      width: calc(100% - 6px);
      outline: none;
      }
      input:hover, textarea:hover {
      outline: none;
      border: 1px solid #095484;
      }
      th, td {
      width: 15%;
      padding: 15px 0;
      border-bottom: 1px solid #ccc;
      text-align: center;
      vertical-align: unset;
      line-height: 18px;
      font-weight: 400;
      word-break: break-all;
      }
      .additional-question th, .additional-question td {
      width: 38%;
      }
      .course-rate th, .course-rate td {
      width: 19%;
      }
      .first-col, .additional-question  .first-col, .course-rate .first-col {
      width: 24%;
      text-align: left;
      }
      .question, .comments {
      margin: 15px 0 5px;
      }
      .question-answer label {
      display: inline-block;
      padding: 0 20px 15px 0;
      }
      .question-answer input {
      width: auto;
      }
      .question-answer, table {
      width: 100%;
      }
      .btn-block {
      margin-top: 20px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #095484;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #0666a3;
      }
      @media (min-width: 568px) {
      th, td {
      word-break: keep-all;
      }
      }
    </style>
  </head>
  <body>
    <div class="main-block">
      <form action="/">
        <h1>Course Evaluation Survey</h1>
        <h4>COURSE</h4>
        <input type="text"/>
        <h4>INSTRUCTOR</h4>
        <input type="text"/>
        <h4>TERM AND YEAR</h4>
        <input type="text"/>
        <h5>Teaching approaches</h5>
        <div>
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Strongly Disagree</th>
              <th>Disagree</th>
              <th>Neutral</th>
              <th>Agree</th>
              <th>Strongly Agree</th>
            </tr>
            <tr>
              <td class="first-col">1. The instructor stimulated my interest in the subject.</td>
              <td><input type="radio" value="none" name="interest" /></td>
              <td><input type="radio" value="none" name="interest" /></td>
              <td><input type="radio" value="none" name="interest" /></td>
              <td><input type="radio" value="none" name="interest" /></td>
              <td><input type="radio" value="none" name="interest" /></td>
            </tr>
            <tr>
              <td class="first-col">2. The instructor managed classroom time and pace well.</td>
              <td><input type="radio" value="none" name="managed" /></td>
              <td><input type="radio" value="none" name="managed" /></td>
              <td><input type="radio" value="none" name="managed" /></td>
              <td><input type="radio" value="none" name="managed" /></td>
              <td><input type="radio" value="none" name="managed" /></td>
            </tr>
            <tr>
              <td class="first-col">3. The instructor was organized and prepared for every class</td>
              <td><input type="radio" value="none" name="organized" /></td>
              <td><input type="radio" value="none" name="organized" /></td>
              <td><input type="radio" value="none" name="organized" /></td>
              <td><input type="radio" value="none" name="organized" /></td>
              <td><input type="radio" value="none" name="organized" /></td>
            </tr>
            <tr>
              <td class="first-col">4. The instructor encouraged discussions and responded to questions.</td>
              <td><input type="radio" value="none" name="encouraged" /></td>
              <td><input type="radio" value="none" name="encouraged" /></td>
              <td><input type="radio" value="none" name="encouraged" /></td>
              <td><input type="radio" value="none" name="encouraged" /></td>
              <td><input type="radio" value="none" name="encouraged" /></td>
            </tr>
            <tr>
              <td class="first-col">5. The instructor demonstrated in-depth knowledge of the subject.</td>
              <td><input type="radio" value="none" name="demonstrated" /></td>
              <td><input type="radio" value="none" name="demonstrated" /></td>
              <td><input type="radio" value="none" name="demonstrated" /></td>
              <td><input type="radio" value="none" name="demonstrated" /></td>
              <td><input type="radio" value="none" name="demonstrated" /></td>
            </tr>
            <tr>
              <td class="first-col">6. The instructor appeared enthusiastic and interested.</td>
              <td><input type="radio" value="none" name="appeared" /></td>
              <td><input type="radio" value="none" name="appeared" /></td>
              <td><input type="radio" value="none" name="appeared" /></td>
              <td><input type="radio" value="none" name="appeared" /></td>
              <td><input type="radio" value="none" name="appeared" /></td>
            </tr>
            <tr>
              <td class="first-col">7. The instructor used a variety of instructional methods to reach the course objectives (e.g. group discussions, student presentations, etc.)</td>
              <td><input type="radio" value="none" name="used" /></td>
              <td><input type="radio" value="none" name="used" /></td>
              <td><input type="radio" value="none" name="used" /></td>
              <td><input type="radio" value="none" name="used" /></td>
              <td><input type="radio" value="none" name="used" /></td>
            </tr>
            <tr>
              <td class="first-col">8. The instructor challenged students to do their best work.</td>
              <td><input type="radio" value="none" name="challenged" /></td>
              <td><input type="radio" value="none" name="challenged" /></td>
              <td><input type="radio" value="none" name="challenged" /></td>
              <td><input type="radio" value="none" name="challenged" /></td>
              <td><input type="radio" value="none" name="challenged" /></td>
            </tr>
          </table>
        </div>
        <p class="question">9. The instructor was accessible outside of class.</p>
        <div class="question-answer">
          <label><input type="radio" value="none" name="accessible" /> yes</label>
          <label><input type="radio" value="none" name="accessible" /> no</label>
        </div>
        <p class="question">10. Did the instructor actively attempt to prevent cheating in this course?</p>
        <div class="question-answer">
          <label><input type="radio" value="none" name="actively" /> yes</label>
          <label><input type="radio" value="none" name="actively" /> no</label>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Feedback and assessment</h5>
        <div>
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Strongly Disagree</th>
              <th>Disagree</th>
              <th>Neutral</th>
              <th>Agree</th>
              <th>Strongly Agree</th>
            </tr>
            <tr>
              <td class="first-col">11. Information about the assessment was communicated clearly</td>
              <td><input type="radio" value="none" name="clearly" /></td>
              <td><input type="radio" value="none" name="clearly" /></td>
              <td><input type="radio" value="none" name="clearly" /></td>
              <td><input type="radio" value="none" name="clearly" /></td>
              <td><input type="radio" value="none" name="clearly" /></td>
            </tr>
            <tr>
              <td class="first-col">12. Feedback was provided within the stated timeframe.</td>
              <td><input type="radio" value="none" name="provided" /></td>
              <td><input type="radio" value="none" name="provided" /></td>
              <td><input type="radio" value="none" name="provided" /></td>
              <td><input type="radio" value="none" name="provided" /></td>
              <td><input type="radio" value="none" name="provided" /></td>
            </tr>
            <tr>
              <td class="first-col">13. Feedback showed how to improve my work (e .g. corrections including comments).</td>
              <td><input type="radio" value="none" name="showed" /></td>
              <td><input type="radio" value="none" name="showed" /></td>
              <td><input type="radio" value="none" name="showed" /></td>
              <td><input type="radio" value="none" name="showed" /></td>
              <td><input type="radio" value="none" name="showed" /></td>
            </tr>
          </table>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Resources and administration</h5>
        <div>
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Strongly Disagree</th>
              <th>Disagree</th>
              <th>Neutral</th>
              <th>Agree</th>
              <th>Strongly Agree</th>
            </tr>
            <tr>
              <td class="first-col">14. The course was supported by adequate library resources.</td>
              <td><input type="radio" value="none" name="supported" /></td>
              <td><input type="radio" value="none" name="supported" /></td>
              <td><input type="radio" value="none" name="supported" /></td>
              <td><input type="radio" value="none" name="supported" /></td>
              <td><input type="radio" value="none" name="supported" /></td>
            </tr>
            <tr>
              <td class="first-col">15. Blackboard resources for the course were useful.</td>
              <td><input type="radio" value="none" name="resources" /></td>
              <td><input type="radio" value="none" name="resources" /></td>
              <td><input type="radio" value="none" name="resources" /></td>
              <td><input type="radio" value="none" name="resources" /></td>
              <td><input type="radio" value="none" name="resources" /></td>
            </tr>
            <tr>
              <td class="first-col">16. Instructor gave guidance on where to find resources.</td>
              <td><input type="radio" value="none" name="guidance" /></td>
              <td><input type="radio" value="none" name="guidance" /></td>
              <td><input type="radio" value="none" name="guidance" /></td>
              <td><input type="radio" value="none" name="guidance" /></td>
              <td><input type="radio" value="none" name="guidance" /></td>
            </tr>
          </table>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Additional question</h5>
        <div class="additional-question">
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Yes</th>
              <th>No</th>
            </tr>
            <tr>
              <td class="first-col">17. The syllabus was explained at the beginning of the course.</td>
              <td><input type="radio" value="none" name="syllabus" /></td>
              <td><input type="radio" value="none" name="syllabus" /></td>
            </tr>
            <tr>
              <td class="first-col">18. The course was delivered as outlined in the syllabus.</td>
              <td><input type="radio" value="none" name="delivered" /></td>
              <td><input type="radio" value="none" name="delivered" /></td>
            </tr>
            <tr>
              <td class="first-col">19. Instructor explained the grading criteria of the course.</td>
              <td><input type="radio" value="none" name="criteria" /></td>
              <td><input type="radio" value="none" name="criteria" /></td>
            </tr>
            <tr>
              <td class="first-col">20. Exams related to the course learning outcomes.</td>
              <td><input type="radio" value="none" name="exams" /></td>
              <td><input type="radio" value="none" name="exams" /></td>
            </tr>
            <tr>
              <td class="first-col">21. Projects/ assignments related to the course learning outcomes.</td>
              <td><input type="radio" value="none" name="assignments" /></td>
              <td><input type="radio" value="none" name="assignments" /></td>
            </tr>
          </table>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Overall experience</h5>
        <p class="question">22. This was a worthwhile class</p>
        <div class="question-answer">
          <label><input type="radio" value="none" name="worthwhile" /> yes</label>
          <label><input type="radio" value="none" name="worthwhile" /> no</label>
        </div>
        <p class="question">23. Would you recommend this course to a fellow
          student?
        </p>
        <div class="question-answer">
          <label><input type="radio" value="none" name="recommend" /> yes</label>
          <label><input type="radio" value="none" name="recommend" /> no</label>
        </div>
        <div>
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Poor</th>
              <th>Fair</th>
              <th>Good</th>
              <th>Very good</th>
              <th>Excellent</th>
            </tr>
            <tr>
              <td class="first-col">24. Overall, how do you rate your experience in this course?</td>
              <td><input type="radio" value="none" name="rate" /></td>
              <td><input type="radio" value="none" name="rate" /></td>
              <td><input type="radio" value="none" name="rate" /></td>
              <td><input type="radio" value="none" name="rate" /></td>
              <td><input type="radio" value="none" name="rate" /></td>
            </tr>
          </table>
        </div>
        <div class="course-rate">
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>A:0 – 4h</th>
              <th>B:5 – 8h</th>
              <th>C:9 – 12h</th>
              <th>C:9 – 12h</th>
            </tr>
            <tr>
              <td class="first-col">25. Overall, how do you rate your experience in this course?</td>
              <td><input type="radio" value="none" name="name" /></td>
              <td><input type="radio" value="none" name="name" /></td>
              <td><input type="radio" value="none" name="name" /></td>
              <td><input type="radio" value="none" name="name" /></td>
            </tr>
          </table>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Student self evaluation</h5>
        <div>
          <h4>Untitled</h4>
          <table>
            <tr>
              <th class="first-col"></th>
              <th>Strongly Disagree</th>
              <th>Disagree</th>
              <th>Neutral</th>
              <th>Agree</th>
              <th>Strongly Agree</th>
            </tr>
            <tr>
              <td class="first-col">26. I contributed constructively during in-class activities</td>
              <td><input type="radio" value="none" name="contributed" /></td>
              <td><input type="radio" value="none" name="contributed" /></td>
              <td><input type="radio" value="none" name="contributed" /></td>
              <td><input type="radio" value="none" name="contributed" /></td>
              <td><input type="radio" value="none" name="contributed" /></td>
            </tr>
            <tr>
              <td class="first-col">27. I feel I am achieving the learning outcomes.</td>
              <td><input type="radio" value="none" name="feel" /></td>
              <td><input type="radio" value="none" name="feel" /></td>
              <td><input type="radio" value="none" name="feel" /></td>
              <td><input type="radio" value="none" name="feel" /></td>
              <td><input type="radio" value="none" name="feel" /></td>
            </tr>
          </table>
        </div>
        <p class="comments">Comments</p>
        <textarea rows="5"></textarea>
        <h5>Comments on strengths and ways of improvement</h5>
        <p class="comments">What changes would you recommend to improve this course?</p>
        <textarea rows="5"></textarea>
        <p class="comments">What did you like best about your instructors teaching?</p>
        <textarea rows="5"></textarea>
        <p class="comments">What did you like least about your instructor’s teaching?</p>
        <textarea rows="5"></textarea>
        <p class="comments">Any further, constructive comment</p>
        <textarea rows="5"></textarea>
        <div class="btn-block">
          <button type="submit" href="/">Send</button>
        </div>
      </form>
    </div>
  </body>
</html>
