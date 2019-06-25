%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 21:42
%%%-------------------------------------------------------------------
-module(p09).
-author("Andrey").

%% API
-export([pack/1,test/0]).

pack([[IH|IT],IH|T]) ->
  pack([[IH,IH|IT]|T]);
pack([[IH|IT]|T]) ->
  [[IH|IT]|pack(T)];
pack([H|T]) ->
  pack([[H]|T]);
pack([]) ->
  [].

test() ->
  [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]] = p09:pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
  ok.