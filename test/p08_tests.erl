%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:39
%%%-------------------------------------------------------------------
-module(p08_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p08,[compress/1]).

compress_test_() -> [
  ?_assert(compress([a,a,a,a,b,c,c,a,a,d,e,e,e,e]) =:= [a,b,c,a,d,e])
].