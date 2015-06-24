
var
  deku $ require :deku

var
  div $ deku.element.bind null :div
  Markdown $ deku.element.bind null $ require :./index

var textDemo ":this is **Markdown**"

var Page $ deku.element.bind null $ {}
  :render $ \ (component setState)
    return $ div ({} (:class :layout-page))
      Markdown $ {} (:source textDemo)
      Markdown null
        div null ":raw DOM"

var app $ deku.tree (Page)

deku.render app (document.querySelector :#app)
