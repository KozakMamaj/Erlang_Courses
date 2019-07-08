%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:37
%%%-------------------------------------------------------------------
-module(p05_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p05,[reverse/1]).

reverse_test_() -> [
  ?_assert(reverse([1,2,3]) =:= [3,2,1])
].