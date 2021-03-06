%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 3月 2021 15:25
%%%-------------------------------------------------------------------
-module(mp3_sync).
-author("admin").

%% API
-export([]).

find_sync(Bin, N) ->
    case is_header(N, Bin) of
        {ok, Len1, _} ->
            case is_header(N + Len1, Bin) of
                {ok, Len2, _} ->
                    case is_header(N + Len1 + Len2, Bin) of
                        {ok, _, _} ->
                            {ok, N};
                        error ->
                            find_sync(Bin, N+1)
                    end;
                error ->
                    find_sync(Bin ,N+1)
            end;
        error ->
            find_sync(Bin, N+1)
    end
.