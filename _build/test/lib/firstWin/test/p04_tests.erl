%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:36
%%%-------------------------------------------------------------------
-module(p04_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p04,[len/1,len_tail/1]).

len_test_() -> [
  ?_assert(len([]) =:= 0),
  ?_assert(p04:len([a,b,c,d]) =:= 4)
].
len_tail_test_() -> [
  ?_assert(len_tail([]) =:= 0),
  ?_assert(len_tail([a,b,c,d]) =:= 4)
].