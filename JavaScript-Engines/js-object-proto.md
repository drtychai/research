![](img/object-diagram_dark.svg)
![](img/exotic-obj.svg)
![](img/ordinary-obj.svg)
![](img/obj-type-system.svg)

```js
// let o = new Object;
Object.__proto__ => 
  Object { … }
  | __defineGetter__:      function __defineGetter__()
  | __defineSetter__:      function __defineSetter__()
  | __lookupGetter__:      function __lookupGetter__()
  | __lookupSetter__:      function __lookupSetter__()
  | __proto__:             null
  | constructor:           function Object()
  | hasOwnProperty:        function hasOwnProperty()
  | isPrototypeOf:         function isPrototypeOf()
  | propertyIsEnumerable:  function propertyIsEnumerable()
  | toLocaleString:        function toLocaleString()
  | toString:              function toString()
  | valueOf:               function valueOf()
  | <get __proto__()>:     function __proto__()
  | <set __proto__()>:     function __proto__()

// let f = new Function;
Function.__proto__ =>
  function ()
  | apply: function apply()
  | arguments: 
  | bind: function bind()
  | call: function call()
  | caller: 
  | constructor: function Function()
  | length: 0
  | name: ""
  | toString: function toString()
  | Symbol(Symbol.hasInstance): function Symbol.hasInstance()
  | <get arguments()>: function arguments()
  | <set arguments()>: function arguments()
  | <get caller()>: function caller()
  | <set caller()>: function caller()
  | <prototype>: Object { … }
```

