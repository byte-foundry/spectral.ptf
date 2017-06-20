var Sandbox = require("./lib/sandbox")
  , s = new Sandbox()

// Example 10 - Console Log
s.run( "var x = 5; console.log(x * x); console.log('pewpew');  x", function( output ) {
  console.log( "Example 10: " + output.console + "\n" )
})

