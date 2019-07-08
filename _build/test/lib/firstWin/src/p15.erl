%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 23:49
%%%-------------------------------------------------------------------
-module(p15).
-author("Andrey").

%% API
-export([replicate/2,replicate_tail/2,test/0]).
-import(p05,[reverse/1]).

add_to_front(0,_,List) ->
  List;
add_to_front(Count,Element,List) ->
  add_to_front(Count-1,Element,[Element|List]).

replicate([H|T],N) ->
  add_to_front(N,H,replicate(T,N));
replicate([],_) ->
  [].

replicate_tail(L,N) ->
  replicate_tail(reverse(L),N,[]).
replicate_tail([H|T],N,NewList) ->
  replicate_tail(T,N,add_to_front(N,H,NewList));
replicate_tail([],_,NewList) ->
  NewList.

test() ->
  [a,a,a,b,b,b,c,c,c] = p15:replicate([a,b,c], 3),
  [a,a,a,b,b,b,c,c,c] = p15:replicate_tail([a,b,c], 3),
  ok.