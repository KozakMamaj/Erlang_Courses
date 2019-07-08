%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 25. Jun 2019 20:12
%%%-------------------------------------------------------------------
-module(bs01).
-author("Andrey").

%% API
-export([first_word/1, test/0]).

first_word(Data) -> first_word(Data, <<>>).
first_word(<<" ", _/binary>>,Acc) ->
  Acc;
first_word(<<Char/utf8,Rest/binary>>,Acc) ->
  first_word(Rest, <<Acc/binary,Char/utf8>>);
first_word(<<>>,Acc) ->
  Acc.

test() ->
  <<"Some">> = bs01:first_word(<<"Some text">>),
  ok.