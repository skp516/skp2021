-module(geometry).
-export([area/1,perimeter/1]).

area({rectangle,Width,Height}) -> Width*Height;
area({square,Side}) -> Side*Side;
area({circle,Radius}) -> 3.14*Radius*Radius;
area({rightTriangle,Side1,Side2}) -> Side1*Side2/2.

perimeter({rectangle,Width,Height}) -> (Width+Height)*2;
perimeter({square,Side}) -> Side*4;
perimeter({circle,Radius}) -> 3.14*Radius*2;
perimeter({rightTriangle,Side1,Side2}) -> Side1+Side2+
	math:sqrt(Side1*Side1+Side2*Side2).