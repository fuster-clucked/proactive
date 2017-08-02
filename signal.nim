#? replace( sub = "\t", by = " " )

import future

type Signal*[V] = ref object
	read*: () -> V
	listen*: proc ( write: proc ( val: V ) )

proc signal*[V]( read: () -> V, listen: proc ( write: proc ( val: V ) )  ): Signal[V] =

	Signal[V]( read: read, listen: listen )

proc map1*[V]( src: Signal[V], fn: ( val: V ) -> V ): Signal[V] =

	signal( () => fn( src.read() ) ) do ( write: proc ( val: V ) ):
		src.listen( ( val: V ) => write( fn( val ) ) )

proc map2*[V]( src1: Signal[V], src2: Signal[V], fn: ( val1: V, val2: V ) -> V ): Signal[V] =

	signal( () => fn( src1.read(), src2.read() ) ) do ( write: proc ( val: V ) ):
		src1.listen( ( val: V ) => write( fn( val, src2.read() ) ) )
		src2.listen( ( val: V ) => write( fn( src1.read(), val ) ) )
