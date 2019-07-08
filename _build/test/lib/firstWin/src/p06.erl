%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 18:29
%%%-------------------------------------------------------------------
-module(p06).
-import(p05,[reverse/1]).
-author("Andrey").

%% API
-export([is_palindrome/1,test/0]).

is_palindrome(L) -> is_list_eq(L, reverse(L)).
is_list_eq(L,L) ->
  true;
is_list_eq(_,_) ->
  false.

test() ->
  true = p06:is_palindrome([1,2,3,2,1]),
  false = p06:is_palindrome([1,2,3,4,5]), %Не входит в спецификацию
  ok.