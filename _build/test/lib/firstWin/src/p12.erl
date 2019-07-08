%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 22:55
%%%-------------------------------------------------------------------
-module(p12).
-author("Andrey").

%% API
-export([decode_modified/1,test/0]).

add_to_front(0,_,List) ->
  List;
add_to_front(Count,Element,List) ->
  add_to_front(Count-1,Element,[Element|List]).

decode_modified([{Count,Element}|T]) ->
  add_to_front(Count,Element,decode_modified(T));
decode_modified([Element|T]) ->
  add_to_front(1,Element,decode_modified(T));
decode_modified([]) ->
  [].

test() ->
  [a,a,a,a,b,c,c,a,a,d,e,e,e,e] = p12:decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]),
  ok.