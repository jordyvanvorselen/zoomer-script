// ZOOMER SCRIPT

VariableAssignment
  = "facts" _ varname:Varname _ "=" _ value:Expression { return { type: "variable", varname, value  } }
  
Varname
  = name:$[a-z]+
  
Expression
 = Boolean

Boolean 
  = "no cap" { return { type: "boolean", value: true } }
  / "cap" { return { type: "boolean", value: false } }

_ "whitespace" = [ \t]*
_end "newline" 
  = _ "\n" {}
