-module(mytest).
-export([f/1,g/1]).

f(X) when (X == 0) or (1/X > 2) -> a.
g(X) when (X == 0) orelse (1/X > 2) -> b.