%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:41
%%%-------------------------------------------------------------------
-module(p14_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p14,[duplicate/1,duplicate_tail/1]).

duplicate_test_() -> [
  ?_assert(duplicate([a,b,c,c,d]) =:= [a,a,b,b,c,c,c,c,d,d])
].
duplicate_tail_test_() -> [
  ?_assert(duplicate_tail([a,b,c,c,d]) =:= [a,a,b,b,c,c,c,c,d,d])
].