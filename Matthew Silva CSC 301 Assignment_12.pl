%Matthew Silva
%Professor Hamel
%CSC 301
%11 December 2017

%Assignment #12

%Interaction loop for collecting/processing user input and writing response output
interact:-
nl,
write('Ready> '),
read(X),
generateResponse(X, Y),
write('Eliza: '),
writeAnswer(Y),
nl,
interact.

%Processes an input list by changing it word by word (if needed) and returns the response
generateResponse([], []).
generateResponse([H|T], Response):- change(H, Changed), generateResponse(T, Next), append([Changed], Next, Response).

%Changes input words to their appropriate response words.
change('you', 'i').
change('i', 'why do you').
change('are', 'am not').
change('do', 'no,').
change('portuguese', 'russian').
change(X, X):- X \= 'you', X \= 'i', X \= 'are', X \= 'do', X \= 'portuguese'.

%Writes an output list response to the terminal word by word
writeAnswer([]).
writeAnswer([H|T]):- write(H), write(' '), writeAnswer(T).