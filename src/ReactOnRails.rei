type component('props, 'context) =
  (Js.t('props), Js.t('context)) => ReasonReact.reactElement
constraint 'props = {..}
constraint 'context = {..};

type options = {traceTurbolinks: bool};

let register: (string, component({..}, {..})) => unit;

let registerWithOptions: (string, component({..}, {..}), options) => unit;

let reactOnRailsPageLoaded: unit => unit;

let authenticityToken: unit => option(string);
