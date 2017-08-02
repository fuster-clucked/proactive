#? replace( sub = "\t", by = " " )

import future, signal

proc `not`*( src: Signal ): Signal =

	map1( src, ( val: bool ) => not val )

proc `and`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: bool, val2: bool ) => val1 and val2 )

proc `or`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: bool, val2: bool ) => val1 or val2 )

proc `xor`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: bool, val2: bool ) => val1 xor val2 )

proc `-`*( src: Signal ): Signal =

	map1( src, ( val: int ) => -val )

proc `+`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: int, val2: int ) => val1 + val2 )

proc `-`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: int, val2: int ) => val1 - val2 )

proc `*`*( src1: Signal, src2: Signal ): Signal =

	map2( src1, src2, ( val1: int, val2: int ) => val1 * val2 )
