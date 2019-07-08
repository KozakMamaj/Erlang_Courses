%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:39
%%%-------------------------------------------------------------------
-module(p09_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p09,[pack/1]).

pack_test_() -> [
  ?_assert(pack([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [[a,a,a,a],[b],[c,c],[a,a],[d],[e,e,e,e]])
].