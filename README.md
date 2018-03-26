# bs-react-on-rails

BuckleScript bindings to [react-on-rails](https://github.com/shakacode/react_on_rails).

## Installation
```shell
# yarn
yarn add bs-react-on-rails

# or npm
npm install --save bs-react-on-rails
```

## Usage

```reason
type props = {. "name": string};

type context = {. "host": string};

let component = (props: props, context: context) =>
  <Page name=props##name host=context##host />;

ReactOnRails.register("App", component);
```

## API
```reason
/* ReactOnRails.register */
ReactOnRails.register("App", component);

/* ReactOnRails.registerWithOptions */
ReactOnRails.registerWithOptions("App", component, {traceTurbolinks: true});

/* ReactOnRails.registerWithOptions */
let csrfToken: option(string) = ReactOnRails.authenticityToken();

/* ReactOnRails.reactOnRailsPageLoaded */
ReactOnRails.reactOnRailsPageLoaded();
```

No `redux` related methods are exposed as there're no `redux` bindings exist and it's not idiomatic way to manage state in `ReasonReact` apps.

See [`react-on-rails` JS API](https://github.com/shakacode/react_on_rails/blob/master/docs/api/javascript-api.md) for more details.

## License
MIT.
