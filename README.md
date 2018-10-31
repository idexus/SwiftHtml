# SwiftHtml

Type-safe HTML5 documents in the Swift Programming Language.

## Simple use case

```swift
let page = {
    Tag.html("Hello World!")
}
```

To get `String` representation:

```swift
print(page.toString())
```

SwiftHtml translates it to:

```html
<!DOCTYPE html><html>Hello World!</html>
```

## HTML generation

### Head example

```swift
let head = {
    Tag.head (
        Tag.meta ()
            .httpequiv(.contentType)
            .content("text/html")
            .charset("utf-8"),

        Tag.link ()
            .rel(.stylesheet)
            .href("https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"),

        Tag.title ("Users")
    )
}
```
SwiftHtml can translate it to (used indentation for clarity):

```html
<head>
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <title>Users</title>
</head>
```

### HTML page example

```
let page = {
    Tag.html (
        head(),
        Tag.body (
            Tag.h1("Hello world!").style("text-align:center"),
            Tag.br(),
            table()
        )
    )
}
```

### Dynamic HTML generation with a closure

Use a `$0` parameter and an operator `+=` to add tags to the `Array` inside a closure.

```swift
$0 += Tag.tr()
```

Example table body declaration with closures:

```swift
let tableBody = {
    Tag.tbody {
        for i in 1...3 {
            $0 += Tag.tr {
                $0 += Tag.td ("Name \(i)")
                $0 += Tag.td ("Last name \(i)")
                $0 += Tag.td ("email\(i)@test.org")
            }
        }
    }
}
```

SwiftHtml can translate it to (used indentation for clarity):

```html
<tbody>
    <tr>
        <td>Name 1</td>
        <td>Last name 1</td>
        <td>email1@test.org</td>
    </tr>
    <tr>
        <td>Name 2</td>
        <td>Last name 2</td>
        <td>email2@test.org</td>
    </tr>
    <tr>
        <td>Name 3</td>
        <td>Last name 3</td>
        <td>email3@test.org</td>
    </tr>
</tbody>
```

### HTML attributes

Add attributes with functions.

```swift
Tag.meta ()
    .httpequiv(.contentType)
    .content("text/html")
    .charset("utf-8")
```

```swift
Tag.table ()
    .class("table", "table-striped")
    .innerHtml {
      // put here inner html of <table>
}  
```

### HTML table

```swift
let table = {
    Tag.table ()
        .class("table", "table-striped")
        .innerHtml {
            $0 += Tag.thead (
                Tag.tr (
                    Tag.th ("First name"),
                    Tag.th ("Last name"),
                    Tag.th ("Email")
                )
            )
            $0 += tableBody()
    }
}
```
