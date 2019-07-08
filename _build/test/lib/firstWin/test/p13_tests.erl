%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:40
%%%-------------------------------------------------------------------
-module(p13_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p13,[decode/1]).

decode_test_() -> [
  ?_assert(decode([{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e])
].