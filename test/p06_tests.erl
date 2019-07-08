%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:37
%%%-------------------------------------------------------------------
-module(p06_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p06,[is_palindrome/1]).

is_palindrome_test_() -> [
  ?_assert(is_palindrome([1,2,3,2,1]) =:= true),
  ?_assert(is_palindrome([1,2,3,4,5]) =:= false) %Не входит в спецификацию
].