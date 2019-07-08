%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:35
%%%-------------------------------------------------------------------
-module(p01_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p01,[last/1]).

last_test_() -> [
  ?_assert(last([a,b,c,d,e,f]) =:= f)
].