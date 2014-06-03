# How Browsers (And Javascript) Think About Webpages

## Objectives

- **Content**: Describe the anatomy of a tree data structure and how it can be used to represent a webpage.
- **Applied**: Create an unattached element, set its contents, and attach it to the DOM.


## Reference

- [Document Object Model (DOM) | MDN](https://developer.mozilla.org/en-US/docs/DOM)
  - [Element](https://developer.mozilla.org/en-US/docs/Web/API/Element)


## Javascript In The Browser

1. Create empty page

  ```html
  <!doctype html>
  <html lang="en">
      <head>
          <title></title>
      </head>
      <body>
      </body>
  </html>
  ```

2. Add an **inline** script tag

  ```html
  <!doctype html>
  <html lang="en">
      <head>
          <title></title>
          <script type="text/javascript">
          </script>
      </head>
      <body>
      </body>
  </html>
  ```


## The DOM API

### Basics

1. Create a new div element with `document.createElement()`
2. Use `innerHTML` to set the element's contents
3. Append it to `document.body`

### Next Steps

1. Define an array containing some strings which are blog posts
2. For each blog post in the array...
  1. Create a new `article` element and append it to the DOM
