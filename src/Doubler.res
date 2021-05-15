module Doubler = {
  open React
  open State
  
  @react.component
  let make = (~dispatch) => {   
    <div>
      <button onClick={(_) => dispatch(State.Double)}> {string("double")} </button>
    </div>
  }
}

