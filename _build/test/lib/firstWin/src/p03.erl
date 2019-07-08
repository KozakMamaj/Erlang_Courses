%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 16:42
%%%-------------------------------------------------------------------
-module(p03).
-author("Andrey").

%% API
-export([element_at/2, test/0]).

element_at([H|_], 1) ->
  H;
element_at([_|T], N) ->
  element_at(T, N-1);
element_at([],_) ->
  undefined.

test() ->
  d = p03:element_at([a,b,c,d,e,f], 4),
  undefined = p03:element_at([a,b,c,d,e,f], 10),
  ok.