%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 23:24
%%%-------------------------------------------------------------------
-module(p13).
-author("Andrey").

%% API
-export([decode/1,test/0]).

add_to_front(0,_,List) ->
  List;
add_to_front(Count,Element,List) ->
  add_to_front(Count-1,Element,[Element|List]).

decode([{Count,Element}|T]) ->
  add_to_front(Count,Element,decode(T));
decode([]) ->
  [].

test() ->
  [a,a,a,a,b,c,c,a,a,d,e,e,e,e] = p13:decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]),
  ok.