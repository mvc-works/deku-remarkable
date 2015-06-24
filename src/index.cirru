
var
  deku $ require :deku
  Markdown $ require :remarkable

var
  div $ deku.element.bind null :div

= module.exports $ {}
  :propTypes $ {}
    :source $ {} (:type :string)
    :options $ {} (:type :object) (:optional true)

  :beforeUpdate $ \ (component nextProps nextState)
    if (not $ is nextProps.options component.props.options) $ do
      = component.md $ new Markdown nextProps.options

  :defaultProps $ {}
    :options $ {}

  :render $ \ (component setState)

    return $ div
      {} (:class :deku-remarkable)
      renderContent component setState

var renderContent $ \ (component setState)
  var props component.props
  return $ cond (? props.source)
    div $ {}
      :innerHTML $ renderMarkdown component setState
    , props.children

var renderMarkdown $ \ (component setState)
  var props component.props
  if (not (? component._md)) $ do
    = component._md $ new Markdown props.options

  return $ component._md.render props.source

