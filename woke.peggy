// ZOOMER SCRIPT

Statements = statements:(Statement)* { return statements.reduce((r, e) => r.concat(e), []).filter(Boolean) }

Statement
 = VariableAssignment
 / Print
 / _end

VariableAssignment
  = "facts" _ varname:Varname _ "=" _ value:Expression { return { type: "variable", varname, value  } }
  
Varname
  = name:$[a-z]+
  
Expression
 = Boolean
 
Print
  = "skrrt" _ output:String { return { type: "print", output } }

String
  = '"' value:$[^"]* '"' { return { type: "string", value } }

Boolean 
  = "no cap" { return { type: "boolean", value: true } }
  / "cap" { return { type: "boolean", value: false } }

_ "whitespace" = [ \t]*
_end "newline" 
  = _ "\n" {}
