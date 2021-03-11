%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 09. 3月 2021 19:02
%%%-------------------------------------------------------------------
-module(combination).
-author("admin").

%% API
-export([permutation_and_combination/1]).

permutation_and_combination([]) -> [[]];
permutation_and_combination([H|T]) ->
  [[H|permutation_and_combination(T)]|permutation_and_combination(T)].