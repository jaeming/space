// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Home = require("./Home.bs.js");
var Curry = require("bs-platform/lib/js/curry.js");
var Posts = require("./Posts.bs.js");
var React = require("react");
var Doubler = require("./Doubler.bs.js");
var ReactDom = require("react-dom");
var PageNotFound = require("./PageNotFound.bs.js");
var RescriptReactRouter = require("@rescript/react/src/RescriptReactRouter.bs.js");

function App$Counter(Props) {
  var url = RescriptReactRouter.useUrl(undefined, undefined);
  var match = React.useState(function () {
        return 0;
      });
  var setCount = match[1];
  var increment = function (param) {
    return Curry._1(setCount, (function (prev) {
                  return prev + 1 | 0;
                }));
  };
  var decrement = function (param) {
    return Curry._1(setCount, (function (prev) {
                  return prev - 1 | 0;
                }));
  };
  var match$1 = url.path;
  var component = match$1 ? (
      match$1.hd === "posts" ? (
          match$1.tl ? React.createElement(PageNotFound.PageNotFound.make, {}) : React.createElement(Posts.Posts.make, {})
        ) : React.createElement(PageNotFound.PageNotFound.make, {})
    ) : React.createElement(Home.Home.make, {});
  return React.createElement("div", undefined, component, React.createElement("p", undefined, match[0]), React.createElement("button", {
                  onClick: increment
                }, "Increment"), React.createElement("button", {
                  onClick: decrement
                }, "Decrement"), React.createElement(Doubler.Doubler.make, {
                  setCount: setCount
                }));
}

var Counter = {
  make: App$Counter
};

var root = document.querySelector("#app-root");

if (!(root == null)) {
  ReactDom.render(React.createElement(App$Counter, {}), root);
}

exports.Counter = Counter;
/* root Not a pure module */
