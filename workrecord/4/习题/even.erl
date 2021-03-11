-module(even).
-export([even1/1,even2/1]).

even1(L) -> %列表推导
  [X|| X <- L,(X rem 2) =:=0].


even2([H|T]) -> %使用case
  case (H rem 2)=:=0 of
      true -> [H|even2(T)];
      false -> even2(T)
  end;
even2([]) -> [].