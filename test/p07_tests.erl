%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:38
%%%-------------------------------------------------------------------
-module(p07_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p07,[flatten/1,flatten_tail/1]).

flatten_test_() -> [
  ?_assert(flatten([a,[],[b,[c,d],e]]) =:= [a,b,c,d,e]),
  ?_assert(flatten([a,[],[b,[c,d],e],f,[g,h]]) =:= [a,b,c,d,e,f,g,h])%Нет в спецификации
].
flatten_tail_test_() -> [
  ?_assert(flatten_tail([a,[],[b,[c,d],e]]) =:= [a,b,c,d,e]),
  ?_assert(flatten_tail([a,[],[b,[c,d],e],f,[g,h]]) =:= [a,b,c,d,e,f,g,h])%Нет в спецификации
].
