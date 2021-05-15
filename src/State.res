module State = {
  type action = Increment | Decrement | Double
  type state = {count: int}

  let reducer = (state, action) => {
    switch action {
      | Increment => {count: state.count + 1}
      | Decrement => {count: state.count - 1}
      | Double => {count: state.count + state.count}
    }
  }
}