%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 20:46
%%%-------------------------------------------------------------------
-module(p08).
-author("Andrey").

%% API
-export([compress/1,test/0]).

compress([H,H|T]) ->
  compress([H|T]);
compress([H|T]) ->
  [H|compress(T)];%Из-за этого не хвостовая
compress([]) ->
  [].
%ToDo К хвостовой рекурсии.
test() ->
  [a,b,c,a,d,e] = p08:compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
  ok.