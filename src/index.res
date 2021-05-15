module App = {
  open React
  open Doubler
  open Posts
  open Home
  open PageNotFound

  open State

  @react.component
  let make = () => {
    let url = RescriptReactRouter.useUrl()

    let component = switch url.path {
    | list{"posts"} => <Posts />
    | list{} => <Home />
    | _ => <PageNotFound />
    }

    let (state, dispatch) = useReducer(State.reducer, {count: 0})

    <div>
      {component}
      <p> {int(state.count)} </p>
      <button onClick={_ => dispatch(Increment)}> {string("Increment")} </button>
      <button onClick={_ => dispatch(Decrement)}> {string("Decrement")} </button>
      <Doubler dispatch />
    </div>
  }
}

switch ReactDOM.querySelector("#app") {
| Some(root) => ReactDOM.render(<App />, root)
| None => ()
}
