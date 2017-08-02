type Console = ref object

{. push importcpp .}

proc log ( c: Console, msg: bool )
proc log ( c: Console, msg: int )
proc log ( c: Console, msg: cstring )
proc log ( c: Console, msg: Event )
proc log ( c: Console, msg: Node )

{. pop .}

var console* {. importc, nodecl .}: Console
