module Counter = {
  open React
  open Doubler
  open Posts
  open Home
  open PageNotFound

  @react.component
  let make = () => {
    let url = RescriptReactRouter.useUrl()
    let (count, setCount) = useState(_ => 0)
    let increment = _ => {setCount(prev => prev + 1)}
    let decrement = _ => {setCount(prev => prev - 1)}


    let component = switch url.path {
      | list{"posts"} => <Posts />
      | list{} => <Home />
      | _ => <PageNotFound />
    }
    
    <div>
      {component}
      <p> {int(count)} </p>
      <button onClick=increment> {string("Increment")} </button>
      <button onClick=decrement> {string("Decrement")} </button>
      <Doubler setCount />
    </div>
  }
}

switch ReactDOM.querySelector("#app-root") {
  | Some(root) => ReactDOM.render(<Counter />, root)
  | None => ()
}
