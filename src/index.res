module App = {
  open React
  open State

  @react.component
  let make = () => {
    let url = RescriptReactRouter.useUrl()

    let component = switch url.path {
    | list{"posts"} => <Posts />
    | list{} => <Home />
    | _ => <PageNotFound />
    }

    let (state, dispatch) = useReducer(reducer, {count: 0})
    let increment = _ => dispatch(Increment)
    let decrement = _ => dispatch(Decrement)
    let double = _ => dispatch(Double)

    <div>
      {component}
      <p> {int(state.count)} </p>
      <button onClick=increment> {string("Increment")} </button>
      <button onClick=decrement> {string("Decrement")} </button>
      <Doubler double />
    </div>
  }
}

switch ReactDOM.querySelector("#app") {
| Some(root) => ReactDOM.render(<App />, root)
| None => ()
}
