-module(t_supervisor).
-export([start/2]).
-export([loop/2]).

start(Process, Identifier) ->
  Doc = spawn(t_supervisor, loop, [Process, Identifier]),
  Doc ! new,
  Doc.

loop(Process, Identifier) ->
  process_flag(trap_exit, true),
  receive
    new ->
      io:format("Creating and monitoring process.~n"),
      register(Identifier, spawn_link(Process)),
      loop(Process, Identifier);
    {'EXIT', From, Reason} ->
      io:format("The process ~p ~p died due to ~p.", [Identifier, From, Reason]),
      io:format(" Restarting. ~n"),
      self() ! new,
      loop(Process, Identifier)
  end.
