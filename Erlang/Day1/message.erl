% Write a function that uses matching to selectively print “success” or “error: message” given input of the form {error, Message} or success.
-module(message).
-export([result/1]).

result(success) -> io:format("success~n");
result({error, Message}) -> io:format("error: ~s~n", [Message]).
