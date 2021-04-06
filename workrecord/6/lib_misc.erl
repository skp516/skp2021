%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 3月 2021 10:42
%%%-------------------------------------------------------------------
-module(lib_misc).
-author("admin").

%% API
-export([sqrt/1]).

sqrt(X) when X < 0 ->
  error({squareRootNegativeArgument, X});
sqrt(X) ->
  math:sqrt(X).