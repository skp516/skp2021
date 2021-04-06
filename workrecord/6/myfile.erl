%%%-------------------------------------------------------------------
%%% @author admin
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. 3月 2021 11:13
%%%-------------------------------------------------------------------
-module(myfile).
-author("admin").

%% API
-export([read/1]).

read(File) ->
    try file:read_file(File) of
        {ok, Bin} -> Bin
    catch
        throw:X  -> {error,X}
    end
.