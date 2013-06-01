-module(string_count).
-export([counter/1]).
-export([count_words/1]).

counter([]) -> 0;
counter(MyString) -> 
  [_ | Tail] = MyString,
  1 + counter(Tail).  
count_words(MyString) ->
  StringList = string:tokens(MyString, " "),
  counter(StringList).

