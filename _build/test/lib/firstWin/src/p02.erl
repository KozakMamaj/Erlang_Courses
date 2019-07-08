%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Jun 2019 19:59
%%%-------------------------------------------------------------------
-module(p02).
-author("Andrey").

%% API
-export([but_last/1, test/0]).

but_last([H1, H2|[]]) ->
  [H1, H2];
but_last([_|T]) ->
  but_last(T).

test() ->
  [e,f] = p02:but_last([a,b,c,d,e,f]),
  ok.