%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:40
%%%-------------------------------------------------------------------
-module(p10_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p10,[encode/1]).

encode_test_() -> [
  ?_assert(encode([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [{4,a},{1,b},{2,c},{2,a},{1,d},{4,e}])
].