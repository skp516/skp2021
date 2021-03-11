%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. 3月 2021 11:39
%%%-------------------------------------------------------------------
-module(test).
-author("admin").

%% API
-export([clear_status/1, count_characters/1]).
-include("records.hrl").

clear_status(R = #todo{status = S, who = W}) ->S.

count_characters(Str) ->
  count_characters(Str, #{}).

count_characters([H|T], X) ->
  case maps:is_key(H,X) of
    true ->
      #{H := N} = X,
      count_characters(T, X#{H := N+1});
    false ->
      count_characters(T, X#{H => 1})
end;
count_characters([],X) ->
  X.