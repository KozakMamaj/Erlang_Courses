%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 23:29
%%%-------------------------------------------------------------------
-module(p14).
-author("Andrey").

%% API
-export([duplicate/1,duplicate_tail/1,test/0]).
-import(p05,[reverse/1]).

duplicate([H|T]) ->
  [H,H|duplicate(T)];
duplicate([]) ->
  [].

duplicate_tail(L) ->
  reverse(duplicate_tail(L,[])).
duplicate_tail([H|T],NewList) ->
  duplicate_tail(T,[H,H|NewList]);
duplicate_tail([],NewList) ->
  NewList.

test() ->
  [a,a,b,b,c,c,c,c,d,d] = p14:duplicate([a,b,c,c,d]),
  [a,a,b,b,c,c,c,c,d,d] = p14:duplicate_tail([a,b,c,c,d]),
  ok.