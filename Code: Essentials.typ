#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages) // install emojis for the programm language

= Section 3: HTML: The Essentials
#line(length: 100%)
Commands:\
``` Shift + Opt + F``` - format the Document in VS Code \
``` Shift + Opt + ```$arrow.t"/" arrow.b$ - duplicate line in up or down direction
\ \
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
