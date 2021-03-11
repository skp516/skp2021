-module(lib_misc3).
-export([perms/1]).

perms([]) -> [[]];
perms(L) -> [ [H|T] || H <- L, T <- perms(L--[H]) ].