open React

@react.component
let make = (~double) => {
  <div> <button onClick=double> {string("double")} </button> </div>
}
