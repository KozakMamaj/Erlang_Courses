%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 17:08
%%%-------------------------------------------------------------------
-module(p04).
-author("Andrey").

%% API
-export([len/1, len_tail/1,test/0]).

len([]) ->
  0;
len([_|T]) ->
  1+len(T).

len_tail(L) ->
  len(L,0).
len([],N) ->
  N;
len([_|T],N) ->
  len(T,N+1).

test() ->
  0 = p04:len([]),
  4 = p04:len([a,b,c,d]),
  0 = p04:len_tail([]),
  4 = p04:len_tail([a,b,c,d]),
  ok.