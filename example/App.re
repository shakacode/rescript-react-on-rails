type props = {. "name": string};

type context = ReactOnRails.defaultContext;

let component = (props: props, context: context) =>
  <Page name=props##name host=context##host />;

ReactOnRails.register("App", component);
