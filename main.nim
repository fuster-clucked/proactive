#? replace( sub = "\t", by = " " )

import future, dom, html, signal, logic

# ---------------------------------------------------------------------------- #

type
	HTMLInputElement = ref HTMLInputElementObj
	HTMLInputElementObj {. importc .} = object of HTMLElement
		`type`: cstring
		checked: bool
		value: cstring

{. push importcpp .}

proc parseInt( w: Window, t: cstring ): int
proc addEventListener( et: EventTarget, ev: cstring, cb: proc ( ev: Event ) )

{. pop .}

# ---------------------------------------------------------------------------- #

proc panel( text: cstring, nodes: varargs[ Element, Element ] ): Element =

	result = el( "fieldset" )
	discard result.append_child( el( "legend", text ) )

	for node in items( nodes ):
		discard result.append_child( node )

# ---------------------------------------------------------------------------- #

type Switch = ref object
	node: HTMLInputElement
	src: Signal[bool]

proc switch(): Switch =

	let input = cast[ HTMLInputElement ]( el( "input" ) )
	input.type = "checkbox"

	Switch( node: input, src: (
		signal( () => input.checked ) do ( write: proc ( val: bool ) ):
			write( input.checked )
			input.add_event_listener( "change" ) do ( ev: Event ):
				write( input.checked )
	) )

# ---------------------------------------------------------------------------- #

type Light = ref object
	node: Element

proc light( src: Signal[bool] ): Light =

	let output = el( "output" )

	src.listen do ( val: bool ):
		output.class_name = if val: "on" else: "off"

	Light( node: output )

# ---------------------------------------------------------------------------- #

type Slider = ref object
	node: HTMLInputElement
	src: Signal[int]

proc slider(): Slider =

	let input = cast[ HTMLInputElement ]( el( "input" ) )
	input.type = "range"

	Slider( node: input, src: (
		signal( () => window.parse_int( input.value ) ) do ( write: proc ( val: int ) ):
			write( window.parse_int( input.value ) )
			input.add_event_listener( "input" ) do ( ev: Event ):
				write( window.parse_int( input.value ) )
	) )

# ---------------------------------------------------------------------------- #

type Text = ref object
	node: Element

proc text[V]( sig: Signal[V] ): Text =

	let output = el( "output" )

	sig.listen do ( val: V ):
		output.text_content = $ val

	Text( node: output )

# ---------------------------------------------------------------------------- #

let
	sw1 = switch()
	sw2 = switch()
	sw3a = switch()
	sw3b = switch()
	sw4a = switch()
	sw4b = switch()
	sw5a = switch()
	sw5b = switch()
	sl1 = slider()
	sl2 = slider()
	sl3a = slider()
	sl3b = slider()
	sl4a = slider()
	sl4b = slider()
	sl5a = slider()
	sl5b = slider()

body(
	h1( document.title ),
	h2( "boolean" ),
	panel( "trival", sw1.node, light( sw1.src ).node ),
	panel( "NOT", sw2.node, light( not sw2.src ).node ),
	panel( "AND", sw3a.node, sw3b.node, light( sw3a.src and sw3b.src ).node ),
	panel( "XOR", sw4a.node, sw4b.node, light( sw4a.src xor sw4b.src ).node ),
	panel( "NAND", sw5a.node, sw5b.node, light( not sw5a.src or not sw5b.src ).node ),
	h2( "number" ),
	panel( "trivial", sl1.node, text( sl1.src ).node ),
	panel( "MINUS", sl2.node, text( -sl2.src ).node ),
	panel( "ADD", sl3a.node, sl3b.node, text( sl3a.src + sl3b.src ).node ),
	panel( "DIFF", sl4a.node, sl4b.node, text( sl4a.src - sl4b.src ).node ),
	panel( "MULT", sl5a.node, sl5b.node, text( sl5a.src * sl5b.src ).node )
)
