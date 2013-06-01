-module(status_matcher).
-export([match/1]).

match(success) -> io:fwrite("success~n", []);
match({error, Message}) -> io:fwrite("error: ~s~n", [Message]).
