%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 22:46
%%%-------------------------------------------------------------------
-module(p11).
-author("Andrey").

%% API
-export([encode_modified/1,test/0]).

encode_modified([{Count,Element},Element|T]) ->
  encode_modified([{Count+1,Element}|T]);
encode_modified([{Count,Element}|T]) ->
  [{Count,Element}|encode_modified(T)];
encode_modified([H,H|T]) ->
  encode_modified([{2,H}|T]);
encode_modified([H|T]) ->
  [H|encode_modified(T)];
encode_modified([]) ->
  [].

test() ->
  [{4,a},b,{2,c},{2,a},d,{4,e}] = p11:encode_modified([a,a,a,a,b,c,c,a,a,d,e,e,e,e]),
  ok.