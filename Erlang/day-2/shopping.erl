-module(shopping).
-export([price_builder/1]).

price_builder(List) ->
  [{Item, Quantity * Price} || {Item, Quantity, Price} <- List].

