-module(mylists1).
-export([map/2]).

map(F,L) -> [ F(X) || X <- L].
%map(_,[]) -> [];
%map(F,[H|T]) -> [F(H)|map(F,T)].