%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:42
%%%-------------------------------------------------------------------
-module(bs01_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(bs01,[first_word/1]).

first_word_test_() -> [
  ?_assert(first_word(<<"Some text">>) =:= <<"Some">>)
].