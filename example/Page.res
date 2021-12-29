@react.component
let make = (~name: string, ~host: string) => {
    <div>
      ({`Hello, ${name}! You're at ${host}!`} -> React.string)
    </div>
};
