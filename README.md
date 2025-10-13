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

<a href="https://jb.gg/OpenSource" style="margin-right: 20px;">
  <img src="https://resources.jetbrains.com/storage/products/company/brand/logos/jetbrains.png" alt="JetBrains" height="120px">
</a>
<a href="https://scoutapp.com">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/4244251/184881147-0d077438-3978-40da-ace9-4f650d2efe2e.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/4244251/184881152-9f2d8fba-88ac-4ba6-873b-22387f8711c5.png">
    <img alt="ScoutAPM" src="https://user-images.githubusercontent.com/4244251/184881152-9f2d8fba-88ac-4ba6-873b-22387f8711c5.png" height="120px">
  </picture>
</a>
<br />
<a href="https://www.browserstack.com">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/4244251/184881122-407dcc29-df78-4b20-a9ad-f597b56f6cdb.png">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/4244251/184881129-e1edf4b7-3ae1-4ea8-9e6d-3595cf01609e.png">
    <img alt="BrowserStack" src="https://user-images.githubusercontent.com/4244251/184881129-e1edf4b7-3ae1-4ea8-9e6d-3595cf01609e.png" height="55px">
  </picture>
</a>
<a href="https://www.honeybadger.io">
  <img src="https://user-images.githubusercontent.com/4244251/184881133-79ee9c3c-8165-4852-958e-31687b9536f4.png" alt="Honeybadger" height="55px">
</a>

<br />
<br />

The following companies support our open source projects, and ShakaCode uses their products!
