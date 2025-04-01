#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#codly(languages: codly-languages) // install emojis for the programm language

= Section 3:
#line(length: 100%)
``` Shift + Opt + F``` - format the Document in VS Code \
``` Shift + Opt + ```$arrow.t"/" arrow.b$ - duplicate line in up or down direction
\ \
Essentials
```html 
<b>...</b> - bold text
<p>...</p> - paragraph 
<h1-h6>...</h1-h6> - headings 
<a href="link.com or .html (for the file)"><!-- Name of a link --></a> - hyperlink
<img src="image source"> - image
<img src="image source" width="" height=""> - image with height and width (but better with CSS)
```
\
HTML Sceleton
```html
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
Lists
```html
<ol>...</ol> - Ordered List (Numbered List)
<ul>...</ul> - Unordered List (Bulletpoints)
<li>...</li> - List (Child of ul or ol)
```
\ 
Nested List
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
