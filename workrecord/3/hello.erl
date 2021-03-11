-module(hello).
-export([test/0]).

test()	-> 
	io:format("Hello world~n").