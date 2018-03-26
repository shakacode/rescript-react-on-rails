type props = {. "name": string};

type context = {
  .
  "host": string,
  "href": string,
  "httpAcceptLanguage": string,
  "i18nDefaultLocale": string,
  "i18nLocale": string,
  "inMailer": Js.boolean,
  "location": string,
  "pathname": string,
  "port": int,
  "scheme": string,
  "search": Js.nullable(string),
  "serverSide": Js.boolean,
};

let component = (props: props, context: context) =>
  <Page name=props##name host=context##host />;

ReactOnRails.register("App", component);
