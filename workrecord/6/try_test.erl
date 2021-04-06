%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 3月 2021 10:23
%%%-------------------------------------------------------------------
-module(try_test).
-author("admin").

%% API
-export([generate_exception/1, demo1/0, demo2/0, demo3/0, demo4/0]).

demo1() ->
    [catcher(I) || I <- [1, 2, 3, 4, 5]].

demo2() ->
    [{I, {catch generate_exception(I)}} || I <- [1, 2, 3, 4, 5]].

demo3() ->
    try
        generate_exception(5)
    catch
        error:X ->
            {X, erlang:get_stacktrace()}
    end
.

demo4() ->
    try
        generate_exception(0)
    catch
        throw:X  ->  io:format("~ts~n",[X]),
            erlang:get_stacktrace()
    end
.

catcher(N) ->
    try generate_exception(N) of
        Val -> {N, normal, Val}
    catch
        throw: X -> {N, caught, thrown, X};
        exit: X -> {N, caught, exited, X};
        error: X -> {N, caught, error, X}
    end
.
generate_exception(0) -> throw(error);
generate_exception(1) -> a;
generate_exception(2) -> throw(a);
generate_exception(3) -> exit(a);
generate_exception(4) -> {'EXIT', a};
generate_exception(5) -> error(a).