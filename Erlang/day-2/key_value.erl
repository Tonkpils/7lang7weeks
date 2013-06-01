-module(key_value).
-export([fetcher/2]).

fetch_value([]) -> "No match found";
fetch_value([Value]) -> Value.
fetcher(List, Keyword) -> 
  fetch_value([Value || {Key, Value} <- List, Key == Keyword]).
