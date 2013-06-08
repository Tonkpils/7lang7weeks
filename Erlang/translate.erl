-module(translate).
-export([loop/0]).
loop() ->
  receive
    "casa" ->
      io:format("house~n"),
      loop();
    "blanca" ->
      io:format("white~n"),
      loop();
    - ->
      io:format("I don't understand.~n"),
      loop()
  end.

