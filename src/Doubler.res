module Doubler = {
  open React
  @react.component
  let make = (~setCount) => {
    let double = _ => {setCount(prev => prev + prev)}
    
    <div>
      <button onClick=double> {string("double")} </button>
    </div>
  }
}

