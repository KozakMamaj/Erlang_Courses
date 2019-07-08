%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 06. Jul 2019 14:05
%%%-------------------------------------------------------------------
-module(p03_tests).
-author("Andrey").

-import(p03,[element_at/2]).

-include_lib("eunit/include/eunit.hrl").


element_at_test_() -> [
  ?_assert(p03:element_at([a,b,c,d,e,f], 4) =:= d),
  ?_assert(p03:element_at([a,b,c,d,e,f], 10) =:= undefined)
].