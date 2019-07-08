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

-include_lib("eunit/include/eunit.hrl").

-import(p03,[element_at/2]).

element_at_test_() -> [
  ?_assert(element_at([a,b,c,d,e,f], 4) =:= d),
  ?_assert(element_at([a,b,c,d,e,f], 10) =:= undefined)
].