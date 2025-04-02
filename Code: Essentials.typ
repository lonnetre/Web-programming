#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages) // install emojis for the programm language


= Commands:
``` Shift + Opt + F``` - format the Document in VS Code \
``` Shift + Opt + ```$arrow.t"/" arrow.b$ - duplicate line in up or down direction




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
External style: link to CSS (href:"style.css"\
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
... {color: red;} - CSS color
... {background-color: red;} - CSS background color
... {background: red;} - CSS background (color, image, position, repeat, size)
... {color: rgb(255, 0, 0);} - CSS color (RGB)
... {color: #FF0000;} - CSS color (hexadecimal)
```
\
Text properties:
```css
... {text-align: center;} - CSS text alignment (can be left, right, center, justify)
... {width: 100px;} - CSS width
... {height: 100px;} - CSS height
... {font-weight: bold;} - CSS font weight (can be normal, bold, bolder, lighter)
... {font-size: 20px;} - CSS font size
... {text-decoration: underline;} - CSS text decoration (can be none, underline, overline, linethrough)
... {letter-spacing: 2px;} - CSS letter spacing
... {font-family: Arial, sans-serif;} - CSS font family (can be serif, sans serif, monospace, cursive, fantasy)
```