-module(filtertest).
-export([filter/2,test/1]).

filter(P, [H|T] ) ->
    case P(H) of
        true -> [H|filter(P, T)];
        false -> filter(P, T)
    end;
filter(P, []) -> [].

test(X) -> 
        if
	X >= 0 -> 1;
	X =< 0 -> -1
        end.