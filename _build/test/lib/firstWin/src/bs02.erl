%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 14:05
%%%-------------------------------------------------------------------
-module(bs02).
-author("Andrey").

%% API
-export([words/1,test/0]).
-import(p05,[reverse/1]).

words(Bin) ->
  words(Bin,[],<<>>).

words(<<"  ",Rest/binary>>,Res,Acc) -> % Выбросить первый пробел, если их больше одного
  words(<<" ",Rest/binary>>,Res,Acc);
words(<<" ",Rest/binary>>,Res,<<_/utf8,_/binary>>=Acc) ->
  words(Rest,[Acc|Res], <<>>);
words(<<" ",Rest/binary>>,Res,_) ->
  words(Rest, Res,<<>>);
words(<<Char/utf8,Rest/binary>>,Res,Acc) ->
  words(Rest,Res,<<Acc/binary,Char/utf8>>);
words(_,Res,<<_/utf8,_/binary>>=Acc) ->
  reverse([Acc|Res]);
words(_,Res,_) ->
  reverse(Res).

test() ->
  [<<"Text">>, <<"with">>, <<"four">>, <<"words">>] = bs02:words(<<"Text with four words">>),
  [<<"Text">>, <<"with">>, <<"four">>, <<"words">>] = bs02:words(<<"   Text    with four   words   ">>),% Не по спецификации. Но если юзать эту функцию для парсера текста, то вполне бывает что слова могут быть выделены кучей пробелов.
  ok.