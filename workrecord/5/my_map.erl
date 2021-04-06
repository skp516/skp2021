%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 3月 2021 9:14
%%%-------------------------------------------------------------------
-module(my_map).
-author("admin").

%% API
-export([map_search_pred/2]).

map_search_pred(Map,Pred) when map_size(Map)>0 ->
  Keys = maps:keys(Map),
  search_pred(Keys,Map,Pred)
;
map_search_pred(_,_) -> none.

search_pred([H|T],Map,F) ->
  Value = maps:get(H,Map),
  case F(H,Value) of
    true -> {H,Value};
    false -> search_pred(T,Map,F)
end
;
search_pred([],_,_) -> none.