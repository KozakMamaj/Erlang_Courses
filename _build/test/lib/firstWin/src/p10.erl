%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 22:39
%%%-------------------------------------------------------------------
-module(p10).
-author("Andrey").

%% API
-export([encode/1,test/0]).

encode([{Count,Element},Element|T]) ->
  encode([{Count+1,Element}|T]);
encode([{Count,Element}|T]) ->
  [{Count,Element}|encode(T)];
encode([H|T]) ->
  encode([{1,H}|T]);
encode([]) ->
  [].

test() ->
  [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}] = p10:encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
  ok.