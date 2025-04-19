#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages) // install emojis for the programm language


= Commands:
``` Shift + Opt + F ``` - format the Document in VS Code \
``` Shift + Opt + ```$arrow.t"/" arrow.b$ - duplicate line in up or down direction \
``` fn/option ```- write text in multiple places \
``` Opt + Command + J ```- open Console (javascript) in Browser 
\ \
= Links:
- https://getbootstrap.com/docs/5.3/getting-started/introduction/ - Bootstrap


#pagebreak()




= Section 3: HTML: The Essentials
#line(length: 100%)
Essentials:
```html 
<b>...</b> - bold text
<p>...</p> - paragraph 
<h1-h6>...</h1-h6> - headings 
<a href="link.com or .html (for the file)"><!-- Name of a link --></a> - hyperlink
<!--...--> - comment
```
\
HTML Sceleton:
```html
! - create a HTML Sceleton

<!DOCTYPE html>
<html>
<head>
    <title> My page </title>
</head>
<body>
    <!-- Content Goes Here -->
</body>
</html>
```
\
Lists:
```html
<ol>...</ol> - Ordered List (Numbered List)
<ul>...</ul> - Unordered List (Bulletpoints)
<li>...</li> - List (Child of ul or ol)
```
\ 
Nested List:
```html
<ul> 
    <li>Bantam
        <ul>
            <li>Silkie</li>
            <li>Polish</li>
        </ul>
    </li>
</ul>
```
\ 
Image:
```html
<img src="image source"> - image
<img src="image source" width="" height=""> - image with height and width (but better with CSS)
<img src="image source" alt="image name"> - adding alt to the image (for the screenreader)
```




#pagebreak()




= Section 4: HTML: Next Steps & Semantics
#line(length: 100%)
```html
<div>...</div> - container for elements (is a block element)
<span>...</span> - wrap an element, so it can be changed in CSS (mostly for a piece of text)
<hr> - divider 
<br> - line break
<sup>...</sup> - create a superscript (f.e. 1 in 1/2)
<sub>...</sub> - create a subsrcipt (f.e. 2 in 1/2)
```
\
HTML Entities:
```html
&lt - <
&gt - >
&copy - ©
...
```
\
Semantik:
```html
<main>...</main> - main content of the page
<nav>...</nav> - navigation links
<section>...</section> - section of the page / of the content
<article>...</article> - article (can be used on its own & independent)
<aside>...</aside> - side content (f.e. ads)
<header>...</header> - header of the page
<footer>...</footer> - footer of the page
<time>...</time> - time (f.e. date)
<figure>...</figure> - figure (f.e. image with caption)
```
\
Emmet:
```html
> - child: main>section>h1 =>
    <main>
        <section>
            <h1>...</h1>
        </section>
    </main>
+ - sibling: h1+h2+h2 => 
    <h1>...</h1>
    <h2>...</h2>
    <h2>...</h2>
() - grouping
* - multiplication: h1*3 =>
    <h1>...</h1>
    <h1>...</h1>
    <h1>...</h1>
$ - item numbering: nav>ul>li.item$*3 =>
    <nav>
        <ul>
            <li class="item1">...</li>
            <li class="item2">...</li>
            <li class="item3">...</li>
        </ul>
    </nav>
{} - text: a{Click me!} =>
    <a href="...">Click me!</a>
```




#pagebreak()




= Section 5: HTML: Forms & Tables
#line(length: 100%)
HTML Tables:
```html
<table>...</table> - table
<td>...</td> - table data (cell)
<th>...</th> - table header (bold)
<tr>...</tr> - table row
<thead>...</thead> - table header (row)
<tbody>...</tbody> - table body (row)
<tfoot>...</tfoot> - table footer (row)
<th rowspan="2">...</th> - table header (row span)
<th colspan="2">...</th> - table header (column span)
```
\
HTML: Forms
```html
<form action="...">...</form> - form with an action / link ("/" + to where the form goes; f.e. /home)
<input type="..."> - input
<input type="..." placeholder="..."> - placeholder

Text input form with placeholder "name":
<form action="...">
    <input type="text" placeholder="name">
</form>

<label for="...">...</label> - label for input

Using label (for = unique id of the input):
<label for="name">Name</label>
<input type="text" id="name" placeholder="name">

<input type="text" name="name"> - input with name (for the server; f.e. after submitting the form, name=John or https://www.google.com/search?q=John)

<button type="submit">...</button> - button (goes to the action of the form)
<button type="reset">...</button> - reset button (resets the form)
<button type="button">...</button> - button (does not go to the action of the form)

<input type="checkbox" name="..."> - checkbox with name
<input type="radio" name="..."> - radio button with name
<input type="..." name="..." value="..."> - value of the input (f.e. for checkbox or radio button)
<select>...</select> - select box
<option>...</option> - option in the select box

Drop down:
<select name="..." id="...">
    <option value="1">...</option>
    <option value="2">...</option>
</select>

<input type="range" id="..." min="..." max="..." step="..." value="..." name="..."> - range input (slider); value is the default(start) value
<input type="color" id="..." name="..."> - color input
...

<textarea>...</textarea> - text area (multiline input)
<textarea id="..." rows="..." cols="...">...</textarea> - text area with rows and columns
```
\
Built in validations:
```html
<input type="text" minlength="..."> - minimum length of the input
<input type="text" maxlength="..."> - maximum length of the input
<input type="text" required> - required input (must be filled out | must be not empty)
```




#pagebreak()




= Section 6: CSS: The Very Basics
#line(length: 100%)
Styles:
```html
Style element:
<h1 style="color: red;">...</h1> - inline style (not recommended)

External style (using CSS):
<head>
    <link rel="stylesheet" href="style.css"> - link to the CSS file (in the head of the HTML file; works automatically)
</head>
<body>
    <h1>...</h1>
</body>
```
#set align(center)
External style: link to CSS (href:"style.css")\
$arrow.b$
#set align(left)
```css
style.css:
h1 {
    color: red;
}
```
\
Color changing in CSS:
```css
... {color: red;}
/* CSS color*/
... {background-color: red;}
/* CSS background color*/
... {background: red;}
/* CSS background (color, image, position, repeat, size)*/
... {color: rgb(255, 0, 0);}
/* CSS color (RGB)*/
... {color: #FF0000;}
/* CSS color (hexadecimal)*/
```
\
Text properties:
```css
... {text-align: center;}
/* CSS text alignment (can be left, right, center, justify)*/
... {width: 100px;}
/* CSS width*/
... {height: 100px;}
/* CSS height*/
... {font-weight: bold;}
/* CSS font weight (can be normal, bold, bolder, lighter)*/
... {font-size: 20px;}
/* CSS font size*/
... {text-decoration: underline;}
/* CSS text decoration (can be none, underline, overline, linethrough)*/
... {letter-spacing: 2px;}
/* CSS letter spacing*/
... {font-family: Arial, sans-serif;}
/* CSS font family (can be serif, sans serif, monospace, cursive, fantasy) */
```




#pagebreak()




= Section 7: The World of CSS Selectors
#line(length: 100%)
```css
* {color: red;}
/*CSS universal selector (selects all elements)*/
... , ... {color: red;}
/*CSS group selector (selects all elements with the same style)*/
#id {color: red;}
/*CSS id selector (selects the element with the id)*/
.class {color: red;}
/*CSS class selector (selects all elements with the class; fe. <span class="class"> ... </span>)*/
... ... {color: red;}
/*CSS descendant selector (selects all elements inside the element, fe. all paragraphs p inside the div)*/
... + ... {color: red;}
/*CSS adjacent sibling selector (selects the element that is next to the element; fe. h1 and p are siblings/are next to each other => h1 + p)*/
... > ... {color: red;}
/*CSS child selector (selects the element that is a child of the element; fe. h1 is child of the div => div > h1 => h1 will be changed)*/
... [ ... = "..."] {color: red;}
/* CSS attribute selector (selects the element with the attribute; fe. input with type text => input[type="text"] or section[class="class"] => section with class "class") */
... [ ... *= "..."] {color: red;}
/* CSS attribute selector (selects the element with the attribute that contains the value; fe. input with type text => input[type*="text"] or section[class*="class"] => section with class "class") */
```
\
Pseudo classes:
```css
... :hover {color: red;}
/* CSS hover selector (selects the element when the mouse is over it) */
... :checked {color: red;}
/* CSS checked selector (selects the element when it is checked; f.e. checkbox or radio button) */
... :nth-of-type(2n) {color: red;}
/* CSS nth type selector (selects the element that is the nth child of the element; f.e. every second child => 2n) */
```
\
Pseudo elements:
```css
... ::after {color: red;}
/* CSS after selector (selects the element after the element) */
... ::before {color: red;}
/* CSS before selector (selects the element before the element) */
... ::first-letter {color: red;}
/* CSS first letter selector (selects the first letter of the element) */
... ::first-line {color: red;}
/* CSS first line selector (selects the first line of the element) */
... ::selection {color: red;}
/* CSS selection selector (selects the selected text of the element) */
```
\
The CSS Cascade:
```css
h1 {color:red}
h1 {color:blue}

=> h1 is blue
```
\
CSS Specificity:
```css
ID > Class > Element

section p {color:teal;} /* => 0 0 2 */
#submit {color: olive;} /* => 1 0 0 */
/* 1 0 0 is far more specific than 0 0 2 */
nav a.active {color: orange;} /* => 0 1 2 */

Also: Inline styles > ID

... {color: red !important;} /* !important is the most important
=> !important > Inline styles > ID > Class > Element */
```
\
CSS Inheritance:
```css
/* certain things don't inherit at default: buttons, input, etc. ... */
button {color: inherit;} /* inherit color from the parent element */
```




#pagebreak()




= Section 8: The CSS Box Model
#line(length: 100%)
```css
... {width: 100px;} /* width of the element */
... {height: 100px;} /* height of the element */
```
\
Border: 
```css
... {border: 1px solid red;} /* border (width, style, color) */
... {border_width: 1px;} /* border width */
... {border_style: solid;} /* border style (solid, dotted, dashed, double, groove, ridge, inset, outset) */
... {border_color: red;} /* border color */
... {box-sizing: border-box;} /* box sizing (content-box, border-box) */
... {border-radius: 10px;} /* border radius (round corners) */
```
\
Padding:
```css
... {padding: 10px;} /* padding (top, right, bottom, left) */
... {padding: 10px 20px;} /* padding (top/bottom, right/left) */
```
\
Margins:
```css
... {margin: 10px;} /* margin (top, right, bottom, left) */
... {margin: 10px 20px;} /* margin (top/bottom, right/left) */
```
\
Display properties:
```css
... {display: block;} /* display block (takes the whole width) */
... {display: inline;} /* display inline (takes the width of the content) */
... {display: inline-block;} /* display inline block (takes the width of the content, but can have width and height) */
... {display: flex;} /* display flex (flexbox) */
... {display: grid;} /* display grid (grid) */
```
\
CSS Units:
```css
/* Font size:
1em = the font-size of the parent
2em = 2 times the font-size of the parent

1rem = the font-size of the root element (html)
2rem = 2 times the font-size of the root element (html) 

Other properties:
1em = computed from font-size of the element itself */
```




#pagebreak()




= Section 9: Other Assorted Useful CSS Properties
Alpha:
```css
... {color: rgb(0, 0, 0, alpha)} /* color (RGB with alpha) */
... {opacity: 0.5;} /* opacity (0 = transparent, 1 = opaque) */
```
\
Positions:
```css
... {position: static;} /* static (default) */
... {position: relative;} /* relative (relative to the element itself) */
... {position: absolute;} /* absolute (relative to the parent element) */
... {position: fixed;} /* fixed (relative to the viewport(containbox)) */
... {position: sticky;} /* sticky (relative to the viewport, but only when scrolling) */
```
\
Transitions:
```css
... {transition: 1s} /* transition (time) */
... {transition: property name duration timingFunction delay} /* transition (property name, duration, timing function, delay) */
... {transition-timing-function: ease;} /* transition timing function (ease, linear, ease-in, ease-out, ease-in-out) */
```
\
Transforming:
```css
... {transform: rotate(45deg);} /* transform (rotate) */
... {transform-origin: top left;} /* transform origin (where the element is transformed from) */
... {transform: scale(1.5);} /* transform (scale) */
... {transform: translate(10px, 20px);} /* transform (translate X and Y) */
... {transform: skew(10deg);} /* transform (skew) */
```
\
Background:
```css
... {background-image: url(image.png);} /* background image */
... {background-size: cover;} /* background size (cover, contain) */
... {background-position: center;} /* background position (top, bottom, left, right, center) */
... {background-repeat: no-repeat;} /* background repeat (no-repeat, repeat, repeat-x, repeat-y) */
or
... {background: url(image.png) no-repeat center / cover;} /* background (image, repeat, position, size) */
```
\
Google Fonts:
```css
font-family: 'Roboto', sans-serif; /* font family (Google Fonts) */
```
#set align(center)
Import Google font using link in HTML\
$arrow.b$
#set align(left)
```html
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400&display=swap" rel="stylesheet"> /* link to Google Fonts */
```




#pagebreak()




= Section 10: Responsive CSS & flexbox
#line(length: 100%)
Flexbox
```css
... {display: flex} /* display flex (flexbox) */
... {flex-direction: row} /* flex direction (row, column, row-reverse) */
... {justify-content: center} /* justify content (center, flex-start, flex-end, space-between, space-around, space-evenly)*/
... {flex-wrap: wrap} /* flex wrap (wrap, nowrap, wrap-reverse) */
... {align-items: center} /* align items (center, flex-start, flex-end, stretch) */
... {align-content: center} /* align content (center, flex-start, flex-end, stretch) */
... {align-self: center} /* align self (center, flex-start, flex-end, stretch); is just for one element */
... {flex-basis: 100px} /* flex basis (width of the element); depending on the main axis: height or width */
... {flex-grow: 1} /* flex grow (how much the element grows); 1 - takes all available space, 2 - twice as much space as 1, ... */
... {flex-shrink: 1} /* flex shrink (how much the element shrinks) */
... {flex: 1} /* flex (flex-grow, flex-shrink, flex-basis) */
... {flex: 1 0 100px} /* flex (flex-grow, flex-shrink, flex-basis) */
```
\
Responsive CSS
```css
@media (min-width: 600px) { /* media query (min-width, max-width, width) */
    ... {color: red;} /* CSS code for the media query */
}
@media (min-width: 600px) and max-width: 800) { 
    ... {color: red;}
}
@media (orientation: landscape) { /* media query (orientation) */
    ... {color: red;} 
}
```




#pagebreak()




= Section 11: Pricing Panel Project
#line(length: 100%)
```css
...: last-child {color: red;} /* CSS last child selector (selects the last child of the element) */
...: first-child {color: red;} /* CSS first child selector (selects the first child of the element) */
```




#pagebreak()




= Section 12: CSS Frameworks: Bootstrap
#line(length: 100%)
https://getbootstrap.com/docs/5.3/getting-started/introduction/

\
```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous"> - link to Bootstrap 
```
\
```javascript
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.min.js" integrity="sha384-VQqxDN0EQCkWoxt/0vsQvZswzTHUVOImccYmSyhJTp7kGtPed0Qcx8rK9h9YEgx+" crossorigin="anonymous"></script>
```
\
```html
<div class="container">...</div> - container (Bootstrap)
<div class="container-fluid">...</div> - container fluid (Bootstrap)
<button type="button" class="btn btn-outline-info btn-lg"></button> - button (Bootstrap)
<h1 class="display-1">...</h1> - heading (Bootstrap)
<blockquote class="blockquote text-right">...</blockquote> - blockquote (Bootstrap)
<button class="btn btn-warning">...</button> - button (Bootstrap) - button.btn.btn-warning
```
\
Close button (Bootstrap):
```html
<button aria-label="Close" class="close" data-dismiss="alert">
    <span aria-hidden="true">&times;</span>
</button>
```
\
Grid system:
```html
<div class="container">
    <div class="row">
        <div class="col-6">...</div> - .col-6 (max is 12 = full grid)
        <div class="col-6">...</div> - .col-6 (max is 12 = full grid)
    </div>
or
    <div class="row">
        <div class="col">...</div> - .col (even space)
        <div class="col">...</div> - .col (even space)
    </div>
</div>
```
\
Responsive grid system:
```html
<div class="col-md-6">...</div> - .col-md-6 (stacks below medium = md)
<div class="col-xl-6">...</div> - .col-xl-6 (stacks below extra large = xl)
```
\
Align items:
```html
<div class="row align-items-start">...</div> - (align items start)
<div class="row justify-comtent-center">...</div> - (justify content center)
```
\
Forms:
```html
<form action="...">
    <div class="form-group">
        <label for="email">Email</label>
        <input type="email" class="form-control" id="name" placeholder="Email">
    </div>

    <div class="form-group">
        <label for="password">Password</label>
        <select name="state" id="state" class="form-control">
            <option value="1">...</option>
            <option value="2">...</option>
        </select>
    </div>
</form>
```
\
Custom checkbox:
```html
<div class="class-control custom-checkbox">
    <input type="checkbox" class="custom-control-input" id="customCheck1">
    <label class="custom-control-label" for="customCheck1">Custom checkbox</label>
</div>
```
\
Navbar:
```html
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
            <a class="nav-item nav-link active" href="#">Home</a>
            <a class="nav-item nav-link" href="#">Features</a>
            <a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </div>
    </div>
</nav>
```
\
Icons:
```html
<button class="...">...<svg ...>...</svg></button> - button with icon (Bootstrap)
```
\
Other Utilities:
```html
<span class="border">...</span> - border
<div class="shadow">...</div> - shadow
```
\
Padding:
```html
<button class="btn p-0">...</button> - padding (from 0 - 5)
```




#pagebreak()




= Section 14: JavaScript Basics!
#line(length: 100%)
``` Browser -> Inspect -> Console = JavaScript```
```javascript
typeof <variable> // type of the variable
NaN // not a number
let <variable> = <value>; // variable declaration
const <variable> = <value>; // constant declaration
var <variable> = <value>; // old variable declaration (not recommended)
``` 




\




= Section 15: JavaScript Strings and More
#line(length: 100%)
```javascript
<string>.trim() // remove whitespace from the beginning and end of the string
<string>.slice(<index>) // slice the string from beginning to index
<string>.slice(<startIndex>, <endIndex>) // slice the string from index to index
<string>.replace(<oldString>, <newString>) // replace the old string with the new string
"<string> ${variable}" // string interpolation
let <variable> = null // null
let <variable> = undefined // undefined
```



\




= Section 16: JavaScript Decision Making
#line(length: 100%)
```javascript
console.log("...") // print to console
console.error("...") // print error to console
alert("...") // alert
prompt("...") // prompt, like alert, but with input f.e. let var = prompt("...")
```
\
Using JavaScript
```html
<body>
    <!-- Code -->
    <script src="script.js"></script> <!-- link to JavaScript file -->
</body>
```
\
Truthy and falsy values:
```javascript
// falsy values: 0, "", null, undefined, NaN
// everything else is truthy
```



\




= Section 17: JavaScript Arrays
#line(length: 100%)
```javascript
let <array> = [1, 2, "a"] // array declaration; arrays are dynamic
<array>[n] = "b" // add element to array
<array>.push("b") // add element to array
<array>.pop() // remove last element from array
<array>.shift() // remove first element from array
<array>.unshift("b") // add element to the beginning of the array
<array>.concat([1, 2]) // concatenate arrays
<array>.includes("a") // check if array includes element
<array>.indexOf("a") // get index of element
<array>.reverse // reverse array
<array>.slice(0, 2) // slice array from index 0 to index 2
<array>.slice(1) // slice array from index 1 to end
<array>.splice(0, 2) // remove elements from index 0 to index 2
[1,2,3] === [1,2,3] // false (arrays are reference types)

num = [1,2,3]
numCopy = num
num === numsCopy // true (both are the same reference)

const <array> can be changed, but not reassigned
f.e.
const <array> = [1,2,3]
<array>[0] = 4 // ok
<array> = [4,5,6] // error
```




#pagebreak()




= Section 18: JavaScript Object Literals
#line(length: 100%)
```javascript
const person = {
    firstName: 'Mick',
    lastName: 'Jagger',
    age: 18
}
person['firstName'] // get value of firstName
person.firstName // get value of firstName
person['first' + 'Name'] // get value of firstName
person.firstName = 'John' // set value of firstName

// Nested structure:
const students = {
    student1: {
        firstName: 'Mick',
        lastName: 'Jagger',
        age: 18
    },
    student2: {
        firstName: 'John',
        lastName: 'Doe',
        age: 20
    }
}
```




#pagebreak()




= Section 19: Repeating Stuff With Loops
#line(length: 100%)
```javascript
for (let i = 0; animals.length; i++) {
    console.log(animals[i])
}

let <variable> = parseInt(prompt("...")) // parseInt (convert string to number)

// For... of loop: 
for (let a of <array>) {
    console.log(a)
}

Object.keys(<object>) // get keys of object
Object.values(<object>) // get values of object
Object.entries(<object>) // get entries of object

for (let [key, value] of Object.entries(<object>)) {
    console.log(key, value)
}

for (let value of Object.values(<object>)) {
    console.log(value)
}
```




#pagebreak()




= Section 20: Introduction Functions
#line(length: 100%)
```javascript
function <name>(<parameters>) {
    // code
}
```




\




= Section 21: Leveling Up Functions
#line(length: 100%)
```javascript
// Function Expressions
const <name> = function(<parameters>) {
    // code
}

// Higher Order Functions = function as parameter
const <name> = function(<parameters>, <callback>) {
    // code
    <callback>(<parameters>)
}

// Returning Functions
const <name> = function(<parameters>) {
    return function(<parameters>) {
        // code
    }
}

// Methods
const <object> = {
    <name>: function(<parameters>) {
        // code
    }
}

// try/catch
try {
    // code
} catch (error) {
    console.log(error)
}
```




#pagebreak()




= Section 22: Callbacks & Array Methods
#line(length: 100%)
```javascript
// For-each loop
const <array> = [1, 2, 3, 4, 5]
<array>.forEach(function(<element>) {
    console.log(<element>)
})

// Map 
<array>.map(function(<element>) {
    return <element> * 2
})

// Arrow function
const <name> = (<parameters>) => {
    // code (does not need return if only one line)
    // f.e. const add = (a, b) => a + b
}

// Map + Arrow function
const <name> = <array>.map(<element> => <element> * 2)

// setTimeout & setInterval
setTimeout(function() {
    // code
}, 1000) // setTimeout (after 1 second)

setInterval(function() {
    // code
}, 1000) // setInterval (every 1 second)

const id = setInterval(function() {
    // code
}, 1000) // setInterval (every 1 second)
clearInterval(id) // clear interval

// Filter method (create a new array with elements that pass the test)
<array>.filter(function(<element>) {
    return <element> > 2
})

// Filter + Map 
<array>.filter(function(<element>) {
    return <element> > 2
}).map(function(<element>) {
    return <element> * 2
})

// Some (similar to every, but returns true if at least one element is true/passes the test)
<array>.some(function(<element>) {
    return <element> > 2
}) 

// Every (tests whether all elements in the array pass the test implemented by the provided function, returns a Boolean value)
<array>.every(function(<element>) {
    return <element> > 2
})

// Reduce method
<array>.reduce(function(<accumulator>, <element>) {
    return <accumulator> + <element>
}, 0) // reduce (0 is the initial value of the accumulator)

// Arrow functions & this 
const <name> = function() {
    <property> = <value>
    <method> = function() {
        console.log(this.<property>)
    }
}
```




#pagebreak()




= Section 23: Newer JavaScript Features
#line(length: 100%)
```javascript
// Deafault params (when param is undefined)
function <name>(<param1> = 1, <param2> = 2) {
    // code
}
```
\
Spread 
```javascript
// Spread in function calls
const <array> = [1, 2, 3]
Math.max(...<array>) // Math.max(1, 2, 3)
Math.max(<array>) // NaN
console.log(...'Hello') // H e l l o

// Spread in array literals 
const <array1> = [1, 2, 3]
const <array2> = [4, 5, 6]
const <array3> = [...<array1>, ...<array2>] // [1, 2, 3, 4, 5, 6]
const <array4> = [1, 2, 3, ...<array1>] // [1, 2, 3, 1, 2, 3]

// Spread in objects
const <object1> = {a: 1, b: 2}
const <object2> = {c: 3, d: 4}
const <object3> = {...<object1>, ...<object2>} // {a: 1, b: 2, c: 3, d: 4}

// Rest params (when param is an array)
function <name>(...<params>) {
    // code
}
funcion <name>(a, b, ...<params>) {
    console.log(a);
    console.log(b);
    console.log(<params>);
}
<name>(1, 2, 3, 4, 5) // 1, 2, [3, 4, 5]
```
\
Destructuring
```javascript
// Destructuring arrays
const <array> = [1, 2, 3]
const [<a>, <b>, <c>] = <array> // a = 1, b = 2, c = 3

// Destructuring objects
const <object> = {a: 1, b: 2}
const {<a>, <b>} = <object> // a = 1, b = 2
const {<a>: <newName>} = <object> // a = 1, newName = 1

// Destructuring params 
function <name>({<a>, <b>}) {
    console.log(<a>, <b>)
}
const <object> = {a: 1, b: 2}
```
