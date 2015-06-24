
deku-remarkable
----

[`react-remarkable`][rm] clone in Deku. A little different though.

[rm]: https://github.com/acdlite/react-remarkable

```
npm i --save deku-remarkable
```

in JSX

```jsx
Markdown $ deku.element.bind null $ require :deku-remarkable
var options = {
  breaks: true
}

var Page = {
  render: function(component setState) {
    return <div class="layout-page">
      <Markdown source={"test **Markdown**"} options={options}>
    </div>
  }
}
```

in CirruScript:

```cirru
var
  Markdown $ deku.element.bind null $ require :deku-remarkable

var options $ {}
  :breaks true

var Page $ deku.element.bind null $ {}
  :render $ \ (component setState)
    return $ div ({} (:class :layout-page))
      Markdown $ {} (:source ":test **Markdown**")
      Markdown null
        div null ":raw DOM"
```

### Usage

* Development

```text
npm i
gulp html
webpack-dev-server --hot
```

* Production

```text
gulp buld
gulp rsync
```

### License

MIT
