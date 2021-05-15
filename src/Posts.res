open React

@react.component
let make = () => {
  <div>
    {string("Posts")} <ul> <li> {string("post 1")} </li> <li> {string("post 2")} </li> </ul>
  </div>
}
