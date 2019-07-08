%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. Jun 2019 18:41
%%%-------------------------------------------------------------------
-module(p07).
-author("Andrey").

%% API
-export([flatten/1,flatten_tail/1,test/0]).
-import(p05,[reverse/1]).

flatten([[IH|IT]|T]) ->
  flatten([IH|([IT|T])]);
flatten([[]|T]) ->
  flatten(T);
flatten([H|T]) ->
  [H|flatten(T)];
flatten([]) ->
  [].

flatten_tail(L) ->
  reverse(flatten_tail(L,[])).
flatten_tail([[IH|IT]|T],NewList) ->
  flatten_tail([IH|([IT|T])],NewList);
flatten_tail([[]|T],NewList) ->
  flatten_tail(T,NewList);
flatten_tail([H|T],NewList) ->
  flatten_tail(T,[H|NewList]);
flatten_tail([],NewList) ->
  NewList.

test() ->
  [a,b,c,d,e] = p07:flatten([a,[],[b,[c,d],e]]),
  [a,b,c,d,e,f,g,h] = p07:flatten([a,[],[b,[c,d],e],f,[g,h]]),%Нет в спецификации
  [a,b,c,d,e] = p07:flatten_tail([a,[],[b,[c,d],e]]),
  [a,b,c,d,e,f,g,h] = p07:flatten_tail([a,[],[b,[c,d],e],f,[g,h]]),%Нет в спецификации
  ok.