-module(lib_misc1).
-export([qsort/1]).

qsort([]) ->[];
 % [31,23,43,42,14,25,7,23,9,15,65]
qsort( [Pivot|T] ) -> 
	qsort( [ X || X <- T, X < Pivot] )
	++ [Pivot] ++
	qsort( [ X || X <- T,X >= Pivot] ).