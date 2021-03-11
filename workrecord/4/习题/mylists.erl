-module(mylists).
-export([my_tuple_to_list/1]).

my_tuple_to_list({}) -> [];
my_tuple_to_list(H) -> 