# APIs and JSON

## Objectives

- **Content**: Describe how web apps can use human-readable data formats to
  expose behavior to anyone.
- **Applied**: Write a Sinatra app that provides a RESTful interface for one resource.

## Outline

### Data Formats

```ruby
{
    :title => "Pacific Rim",
    :release_year => 2013,
    :abstract => "Giant robots beating the snot out of giant monsters"
}
```

```javascript
{
    "title": "Pacific Rim",
    "release_year": 2013,
    "abstract": "Giant robots beating the snot out of giant monsters"
}
```

Field | Value
-- | --
Title | Pacific Rim
Release Year | 2013
Abstract | Giant robots beating the snot out of giant monsters

```
\u001F\x8B\b\u00006ӍS\u0000\u0003\u001D\xCA1\n\x83P\f\u0006ૄ\xCC\u000E\xDAn^\xC0\xB5\xF4\u0002\x92\xF7\x88\u001A\xD0\u0017H\xFE\u000E\xA5\xF4\xEE\x8A÷}?\x86aW\u001E\xF9%\xD5\u0016\xAB\xF4\xB6\x83;\u000E\xDDUR\xE7\xAFJ\xF0\xF8\xE8\x87g\xC7R\u0012!\u0015W\x9EL\u001A(\xBC8\x92\x8A\n\xAC\xAD\x84M)\x9B\x83\xFCsYh\xBD\xD3\xE1-\xA1\x91\xFC?\u0001\u0017b\r\xC6l\u0000\u0000\u0000
```

### RESTful URLs

There's a resource called `quizzes` that lives at `quizmonster.fake/quizzes`.

What would the request **method** and **path** be if you wanted to...

1. List all quizzes?
2. Find out how to create a new quiz?
3. Create a new quiz?
4. Get quiz #15?
5. Find out how to make changes to quiz #15?
6. Make changes to quiz #15?
7. Delete quiz #15?
8. Get a list of quiz #15's questions?

### JSON

1. Translate the hash in [EX_json_basics.starter.js](EX_json_basics.starter.js) to javascript.
2. WOW that sucked.
3. Now you never have to do it again:
  - [JSON](http://www.ruby-doc.org/stdlib/libdoc/json/rdoc/JSON.html) in Ruby
  - [JSON](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/JSON) in Javascript
