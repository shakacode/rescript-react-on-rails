# rescript-react-on-rails

ReScript bindings to [react-on-rails](https://github.com/shakacode/react_on_rails).

## Installation
```shell
# yarn
yarn add rescript-react-on-rails

# or npm
npm install --save rescript-react-on-rails
```

## Usage

```rescript
type props = {"name": string};

type context = {"host": string};

let component = (props: props, context: context) => {
  // ReactOnRails require a component as return (not a react element)
  // That can be done by wrapping the return with a function
  (. ()) => <Page name={props["name"]} host={context["host"]} />
}

ReactOnRails.register("App", component)
```

See [example Rails app](https://github.com/shakacode/reason-react-on-rails-example)
## API
```rescript
// ReactOnRails.register
ReactOnRails.register("App", component);

// ReactOnRails.registerWithOptions
ReactOnRails.registerWithOptions("App", component, {traceTurbolinks: true});

// ReactOnRails.authenticityToken
let csrfToken: option<string> = ReactOnRails.authenticityToken();

// ReactOnRails.reactOnRailsPageLoaded
ReactOnRails.reactOnRailsPageLoaded();
```

No `redux` related methods are exposed as there're no `redux` bindings exist and it's not idiomatic way to manage state in `ReScriptReact` apps.

See [`react-on-rails` JS API](https://github.com/shakacode/react_on_rails/blob/master/docs/api/javascript-api.md) for more details.

## License
MIT.
