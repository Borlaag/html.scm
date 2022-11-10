# html.scm

**tl;dr:** input Scheme, output HTML

Scheme DSL that compiles to HTML. The goal is to implement all elements and attributes as Scheme wrappers. 
The [MDN HTML elements reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element) is a good resource
that lists all of them with some additional documentation.

## Example

Below is a high level idea of what the input and generated output would look like using a contrived and simple example.

```scheme
;; Writing HTML in Scheme
(html (lang "en-US")
      (head (meta (charset "utf-8"))
            (meta (name "viewport") 
                  (content "width=device-width"))
            (title "My test page"))
      (body (h1 "My First Heading")
            (p "My first paragraph.")))
```

```html
<!-- HTML generated by html.scm -->
<!DOCTYPE html>
<html lang="en-US">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width" />
    <title>My test page</title>
  </head>
  <body>
    <h1>My First Heading</h1>
    <p>My first paragraph."</p>
  </body>
</html>

```

## Why?

It's a building block or stepping stone for a slightly bigger idea I have to write a static website generator
in Scheme where all sources, including HTML templates and CSS styling, are written in Scheme.

<details>
<summary>But... why?</summary>
<img src="https://user-images.githubusercontent.com/114830266/201196541-fb629347-f9e1-4a82-be0a-efdc8e403aaf.png" alt="Look... I just want to... okay?" height=150px>
</details>
