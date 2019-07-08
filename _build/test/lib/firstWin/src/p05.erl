%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 17:21
%%%-------------------------------------------------------------------
-module(p05).
-author("Andrey").

%% API
-export([reverse/1,test/0]).

reverse(L) ->
  reverse(L,[]).
reverse([LastElement],NewList) ->
  [LastElement|NewList];
reverse([H|T],NewList) ->
  reverse(T, [H|NewList]).
%ToDO Придумать, как с не хвостовой. Ну, или подсмотреть.
test() ->
  [3,2,1] = p05:reverse([1,2,3]),
  ok.