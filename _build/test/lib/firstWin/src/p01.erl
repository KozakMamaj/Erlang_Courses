%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Jun 2019 11:01
%%%-------------------------------------------------------------------
-module(p01).
-author("Andrey").

%% API
-export([last/1, test/0]).

last([H|[]]) ->
  H;
last([_|T]) ->
  last(T).

test() ->
  f = p01:last([a,b,c,d,e,f]),
  ok.