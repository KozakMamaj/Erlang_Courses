%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:42
%%%-------------------------------------------------------------------
-module(bs03_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(bs03,[split/2]).

split_test_() -> [
  ?_assert(split(<<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>,"-:-") =:= [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>])
].