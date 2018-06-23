% Matthew Silva CSC 301 Assignment #10
% Due November 30, 2017
% Professor Hamel

% these are the family facts 
female(pam).
female(liz).
female(ann).
female(pat).
male(tom).
male(bob).
male(jim).
parent(pam,bob).   % pam is parent of bob (etc.)
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).

%My code
different(X,Y) :- not(X=Y).
sister(X,Y) :- female(X), parent(Z, X), parent(Z, Y), different(X,Y).
son(X,Y) :- male(X), parent(Y, X).
father(X,Y) :- male(X), parent(X, Y).
grandmother(X,Y) :- female(X), parent(X, Z), parent(Z, Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y):- parent(X,Z), ancestor(Z, Y).

% I decided to write a second ancestor function to use recursion differently
ancestor2(X, Y) :- parent(X, Y).
ancestor2(X, Y) :- parent(A, Y), ancestor2(X, A).