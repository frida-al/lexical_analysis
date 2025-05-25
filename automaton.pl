% Define knowledge base 
move(q0, q1, a).
move(q1, q2, n).
move(q2, q3, d).
move(q2, q4, g).
move(q2, q5, n).
move(q3, qF, o).
move(q3, q6, ú).
move(q6, q7, n).
move(q7, qF, 3).
move(q6, q8, r).
move(q8, q9, i).
move(q9, qF, l).
move(q4, qF, a).
move(q5, q10, 1).
move(q10, q11, t).
move(q11, q12, h).
move(q12, q13, a).
move(q13, q14, n).
move(q14, q15, n).
move(q15, q16, a).
move(q16, q17, t).
move(q17, qF, h).

% Define final state of the automaton (accepting state)
finalState(qF).

% Define first state and pass it on to the next function
travelAutomaton(Word):-
    reviseAutomaton(Word, q0).

% Base case, the whole word has been revised and checks if it ends in accepted state
reviseAutomaton([], InitialState):-
    finalState(InitialState).

%Function that goes on as long as the list still has elements in it
reviseAutomaton([Letter | RestOfWord], InitialState):-
    move(InitialState, FollowingState, Letter),
    reviseAutomaton(RestOfWord, FollowingState).

% Some test cases
ando:- 
    write('ando'), nl,
    write('Expected: true'), nl,
    travelAutomaton([a, n, d, o]).

aufwiedersehen:- 
    write('aufwidersehen'), nl,
    write('Expected: false'), nl,
    travelAutomaton([a, u, f, w, i, e, d, e, r, s, e, h, e, n]).

andúril:-
    write('andúril'), nl,
    write('Expected: true'), nl,
    travelAutomaton([a, n, d, ú, r, i, l]).

stern:-
    write('stern'), nl,
    write('Expected: false'), nl,
    travelAutomaton([s, t, e, r, n]).

andún3:- 
    write('andún3'), nl,
    write('Expected: true'), nl,
    travelAutomaton([a, n, d, ú, n, 3]).

möhrrübe:- 
    write('möhrrübe'), nl,
    write('Expected: false'), nl,
    travelAutomaton([m, ö, h, r, r, ü, b, e]).

anga:- 
    write('anga'), nl,
    write('Expected: true'), nl,
    travelAutomaton([a, n, g, a]).

ann1thannat:-
    write('ann1thannat'), nl,
    write('Expected: false'), nl,
    travelAutomaton([a, n, n, 1, t, h, a, n, n, a, t]).

ann1thannath:-
    write('ann1thannath'), nl,
    write('Expected: true'), nl,
    travelAutomaton([a, n, n, 1, t, h, a, n, n, a, t, h]).

schriftstellerin:-
    write('schriftstellerin'), nl,
    write('Expected: false'), nl,
    travelAutomaton([s, c, h, r, i, f, t, s, t, e, l, l, e, r, i, n]).
