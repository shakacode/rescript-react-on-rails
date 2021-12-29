type component<'props, 'context> = ({..} as 'props, {..} as 'context) => React.element

type options = {traceTurbolinks: bool}

type optionsJs = {"traceTurbolinks": bool}

type reactOnRails<'props, 'context> = {
  "register": @send (Js.Dict.t<component<'props, 'context>> => unit),
  "setOptions": @send (optionsJs => unit),
  "authenticityToken": @send (unit => Js.nullable<string>),
  "reactOnRailsPageLoaded": @send (unit => unit),
}

@module("react-on-rails")
external reactOnRails: reactOnRails<'props, 'context> = "default"

let register = (name: string, component: component<'props, 'context>) =>
  reactOnRails["register"](list{(name, component)} -> Js.Dict.fromList)

let mapOptionsToJs = (options: options): optionsJs =>
  {
    "traceTurbolinks": options.traceTurbolinks,
  }

let registerWithOptions = (
  name: string,
  component: component<'props, 'context>,
  options: options,
) => {
  reactOnRails["setOptions"](options -> mapOptionsToJs)
  register(name, component)
}

let reactOnRailsPageLoaded = () => reactOnRails["reactOnRailsPageLoaded"]()

let authenticityToken = () => reactOnRails["authenticityToken"]() |> Js.Nullable.toOption

type defaultContext = {
  "host": string,
  "href": string,
  "httpAcceptLanguage": string,
  "i18nDefaultLocale": string,
  "i18nLocale": string,
  "inMailer": bool,
  "location": string,
  "pathname": string,
  "port": int,
  "scheme": string,
  "search": Js.nullable<string>,
  "serverSide": bool,
}
