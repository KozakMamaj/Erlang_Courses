%%%-------------------------------------------------------------------
%%% @author Andrey
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 08. Jul 2019 22:40
%%%-------------------------------------------------------------------
-module(p12_tests).
-author("Andrey").

-include_lib("eunit/include/eunit.hrl").

-import(p12,[decode_modified/1]).

decode_modified_test_() -> [
  ?_assert(decode_modified([{4,a},b,{2,c},{2,a},d,{4,e}]) =:= [a,a,a,a,b,c,c,a,a,d,e,e,e,e])
].