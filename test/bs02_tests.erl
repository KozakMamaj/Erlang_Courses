%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:42
%%%-------------------------------------------------------------------
-module(bs02_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(bs02,[words/1]).

words_test_() -> [
  ?_assert(words(<<"Text with four words">>) =:= [<<"Text">>, <<"with">>, <<"four">>, <<"words">>]),
  ?_assert(words(<<"   Text    with four   words   ">>) =:= [<<"Text">>, <<"with">>, <<"four">>, <<"words">>]) % Не по спецификации. Но если юзать эту функцию для парсера текста, то вполне бывает что слова могут быть выделены кучей пробелов.
].