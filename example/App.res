type props = {"name": string}

type context = ReactOnRails.defaultContext

let component = (props: props, context: context) => 
 (_props) => <Page name={props["name"]} host={context["host"]} />

ReactOnRails.register("App", component)
