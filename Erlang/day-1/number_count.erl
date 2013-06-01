-module(number_count).
-export([count_to_ten/0]).

-define(MAX, 10).
 
count_to_ten() -> count_to(?MAX).

count_to(0) -> 
  io:fwrite("~B, ", [10]);

count_to(N) ->
  io:fwrite("~B, ", [?MAX - N]), count_to(N - 1).
