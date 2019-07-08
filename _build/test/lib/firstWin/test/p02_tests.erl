%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:35
%%%-------------------------------------------------------------------
-module(p02_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p02,[but_last/1]).

but_last_test_() -> [
  ?_assert(but_last([a,b,c,d,e,f]) =:= [e,f])
].