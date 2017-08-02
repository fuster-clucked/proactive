#? replace( sub = "\t", by = " " )

import dom

proc el*( tag: cstring ): Element =

	document.create_element( tag )

proc el*( tag: cstring, text: cstring ): Element =

	result = el( tag )
	result.text_content = text

proc h1*( text: cstring ): Element =

	el( "h1", text )

proc h2*( text: cstring ): Element =

	el( "h2", text )

proc body*( nodes: varargs[ Element, Element ] ) =

	for node in items( nodes ):
		discard document.body.append_child( node )
