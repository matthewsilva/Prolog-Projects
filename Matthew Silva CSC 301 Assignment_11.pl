%Matthew Silva
%Professor Hamel
%CSC 301
%Due 6 December 2017
myflip([],[]).
myflip([H|T], FullFlipped):-  
myflip(T, NextFlipped), 
append(NextFlipped, [H], FullFlipped).