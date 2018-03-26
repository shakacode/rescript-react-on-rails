let component = ReasonReact.statelessComponent(__MODULE__);

let make = (~name: string, ~host: string, _children) => {
  ...component,
  render: _self =>
    <div>
      ({j|Hello, $name! You're at $host!|j} |> ReasonReact.stringToElement)
    </div>,
};
