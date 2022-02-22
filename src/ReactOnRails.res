type return = (. unit) => React.element
type component<'props, 'context> = ({..} as 'props, {..} as 'context) => return

type options = {traceTurbolinks: bool}

type reactOnRails<'props, 'context> = {
  register: (. Js.Dict.t<component<'props, 'context>>) => unit,
  setOptions: (. options) => unit,
  authenticityToken: (. unit) => Js.nullable<string>,
  reactOnRailsPageLoaded: (. unit) => unit,
}

@module("react-on-rails")
external reactOnRails: reactOnRails<'props, 'context> = "default"

let register = (name: string, component: component<'props, 'context>) => {
  let dict = Js.Dict.empty()
  dict->Js.Dict.set(name, component)
  reactOnRails.register(. dict)
}

let registerWithOptions = (
  name: string,
  component: component<'props, 'context>,
  options: options,
) => {
  reactOnRails.setOptions(. options)
  register(name, component)
}

let reactOnRailsPageLoaded = reactOnRails.reactOnRailsPageLoaded

let authenticityToken = () => reactOnRails.authenticityToken(.)->Js.Nullable.toOption

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
