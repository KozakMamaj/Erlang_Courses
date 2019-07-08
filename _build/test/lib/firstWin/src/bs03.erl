%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 14:08
%%%-------------------------------------------------------------------
-module(bs03).
-author("Andrey").

%% API
-export([split/2,test/0]).
-import(p05,[reverse/1]).

split(Bin,Sep) ->
  split(Bin,Sep,[],<<>>,<<>>,Sep).

split(<<Char/utf8,Rest/binary>>,Sep,Res,Acc,SepAcc,[Char|SepRest]) ->
  split(Rest,Sep,Res,Acc,<<SepAcc/binary,Char/utf8>>,SepRest);
split(<<Char/utf8,Rest/binary>>,Sep,Res,Acc,SepAcc,[_|_]) ->
  split(Rest,Sep,Res,<<Acc/binary,SepAcc/binary,Char/utf8>>,<<>>,Sep);
split(<<_/utf8,_/binary>>=Rest,Sep,Res,Acc,_,_) ->
  split(Rest,Sep,[Acc|Res],<<>>,<<>>,Sep);
split(_,_,Res,<<_/utf8,_/binary>>=Acc,_,_) ->
  reverse([Acc|Res]);
split(_,_,Res,_,_,_) ->
  reverse(Res).

test() ->
  [<<"Col1">>, <<"Col2">>, <<"Col3">>, <<"Col4">>, <<"Col5">>] = bs03:split(<<"Col1-:-Col2-:-Col3-:-Col4-:-Col5">>,"-:-"),
  ok.