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

## Supporters

<a href="https://www.jetbrains.com">
  <img src="https://user-images.githubusercontent.com/4244251/184837695-2c00e329-7241-4d9b-9373-644c1ce215be.png" alt="JetBrains" height="120px">
</a>
<a href="https://scoutapp.com">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/4244251/184837700-a910106b-1b1b-4117-88b8-9b5389425e66.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/4244251/184837704-83960568-1599-485b-b184-5fd8b05d5051.png">
    <img alt="ScoutAPM" src="https://user-images.githubusercontent.com/4244251/184837704-83960568-1599-485b-b184-5fd8b05d5051.png" height="120px">
  </picture>
</a>
<br />
<a href="https://www.browserstack.com">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/4244251/184838560-ada89877-abd1-4d11-b144-b52ef69e0bb9.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/4244251/184838569-35f4d4b1-5545-4ee4-a015-41ca7a5dbc7c.png">
    <img alt="BrowserStack" src="https://user-images.githubusercontent.com/4244251/184838569-35f4d4b1-5545-4ee4-a015-41ca7a5dbc7c.png" height="55px">
  </picture>
</a>
<a href="https://railsautoscale.com">
  <img src="https://user-images.githubusercontent.com/4244251/184838579-f8c2fd95-f376-4f0d-a661-50bbdeee892b.png" alt="Rails Autoscale" height="55px">
</a>
<a href="https://www.honeybadger.io">
  <img src="https://user-images.githubusercontent.com/4244251/184838575-e56cac82-5853-448c-a623-67280a91d75f.png" alt="Honeybadger" height="55px">
</a>

<br />
<br />

The following companies support our open source projects, and ShakaCode uses their products!
