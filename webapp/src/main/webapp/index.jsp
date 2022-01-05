<form action="/">

    <legend>A Sample Form Legend</legend>

    <label for="name">Name: </label>
    <input type="text" value="Name" name="Name" />

    <label for="email">Email: </label>
    <input type="email" value="Email" name="Email" />

    <label>Button: </label>
    <input type="button" value="Button" name="button" />

    <label>Single Checkbox: 
    <input type="checkbox" value="checkbox1" name="button" /></label>

    <fieldset>
        <legend>Group of Checkboxes: </legend>
        <label>Checkbox 1: 
            <input type="checkbox" value="checkbox1" name="checkgroup[]" /></label>
        <label>Checkbox 2: 
            <input type="checkbox" value="checkbox2" name="checkgroup[]" /></label>
        <label>Checkbox 3: 
            <input type="checkbox" value="checkbox3" name="checkgroup[]" /></label>
        <label>Checkbox 4: 
            <input type="checkbox" value="checkbox4" name="checkgroup[]" /></label>
    </fieldset>

    <label>Color: </label>
    <input type="color" value="color" name="color" />

    <label>Date: </label>
    <input type="date" value="date" name="date" />

    <label>Date, Time (Local): </label>
    <input type="datetime-local" value="datetime" name="datetime" />

    <label>File: </label>
    <input type="file" value="file" name="file" />

    <input type="hidden" value="hidden" name="hidden" />

    <label>Image: </label>
    <input type="image" value="image" name="image" />

    <label>Month: </label>
    <input type="month" value="month" name="month" />

    <label>Number: </label>
    <input type="number" value="number" name="number" />

    <label>Password: </label>
    <input type="password" value="password" name="password" />

    <label>Single Radio: 
    <input type="radio" value="radio" name="radio" /></label>

    <fieldset>
        <legend>Group of Radios: </legend>
        <label>Radio 1: 
            <input type="radio" value="radio1" name="radiogroup" /></label>
        <label>Radio 2: 
            <input type="radio" value="radio2" name="radiogroup" /></label>
        <label>Radio 3: 
            <input type="radio" value="radio3" name="radiogroup" /></label>
        <label>Radio 4: 
            <input type="radio" value="radio4" name="radiogroup" /></label>
    </fieldset>

    <label>Range: </label>
    <input type="range" value="range" name="range" />

    <label>Reset: </label>
    <input type="reset" value="reset" name="reset" />

    <label>Time: </label>
    <input type="time" value="time" name="time" />

    <label>Search: </label>
    <input type="search" value="search" name="search" />

    <label>Tel: </label>
    <input type="tel" value="tel" name="tel" />

    <label>Text: </label>
    <input type="text" value="text" name="text" />

    <label>URL: </label>
    <input type="url" value="url" name="url" />

    <label>Week: </label>
    <input type="week" value="week" name="week" />

    <button>This is a button!</button>

    <label>Select 1: </label>
    <select name="select" size="1">
        <option>Test</option>
        <option>Test</option>
    </select>

    <label>Select 2: </label>
    <select name="select1" size="3">
        <option>Test</option>
        <option>Test</option>
    </select>

    <label>Select Multiple: </label>
    <select name="select2" size="3" multiple>
        <option>Test</option>
        <option>Test</option>
    </select>

    <label>Select Groups: </label>
    <select name="select3" size="1" multiple>
        <optgroup label="First Group">
            <option>Test</option>
            <option>Test</option>
        </optgroup>
        <optgroup label="Second Group">
            <option>Test</option>
            <option>Test</option>
        </optgroup>
        <optgroup label="Third Group">
            <option>Test</option>
            <option>Test</option>
        </optgroup>
    </select>

    <fieldset>
        <legend>Datalist: </legend>
        <input type="text" name="datalist" list="samplelist">
        <datalist id="samplelist">
            <option>Something</option>
            <option>Something else</option>
            <option>Another thing</option>
        </datalist>
    </fieldset>

    <label>A textarea!</label>
    <textarea name="textarea">A paragraph in here</textarea>

    <label>Progress (very unsupported): </label>
    <progress value="20" max="100"></progress>

    <label>Meter (very unsupported): </label>
    <meter min="0" value="20" max="100" low="10" high="90" optimum="80">20 in the meter</meter>

    <input type="submit" value="GO" />

</form>

