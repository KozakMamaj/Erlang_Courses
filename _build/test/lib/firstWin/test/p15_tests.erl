%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:41
%%%-------------------------------------------------------------------
-module(p15_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p15,[replicate/2,replicate_tail/2]).

replicate_test_() -> [
  ?_assert(replicate([a,b,c], 3) =:= [a,a,a,b,b,b,c,c,c])
].
replicate_tail_test_() -> [
  ?_assert(replicate_tail([a,b,c], 3) =:= [a,a,a,b,b,b,c,c,c])
].