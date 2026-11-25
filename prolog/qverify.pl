% qverify: prove that a reversible circuit (as pl2qc would make) matches its Prolog spec on
% every basis state. Circuits use x(T), cnot(C, T) and ccnot(C1, C2, T) on bit registers; a
% spec is a Prolog predicate on lists of bits. verify/4 checks all 2^N inputs and returns ok or
% the first counterexample; reversibility and inverses are checked the same way.
%?- verify([cnot(0, 2), cnot(1, 2)], 3, xor_into_2, R).          % R = ok
%?- verify([cnot(0, 2)], 3, xor_into_2, R).                      % R = counterexample([0,1,0], want([0,1,1]), got([0,1,0]))
%?- adder(C), verify(C, 4, half_adder, R).                       % R = ok
%?- verify([x(5)], 3, identity, R).                              % R = cannot_run([0,0,0], circuit)
:- module(qverify, [gate/3, run/3, verify/4, reversible/2, inverse/2, adder/1, spec/3, bits/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).

flip(T, B0, B) :- nth0(T, B0, X), Y is 1 - X, length(Pre, T), append(Pre, [_|Post], B0), append(Pre, [Y|Post], B).
% a gate runs only if every bit it names is in the register (a missing control bit is not read as 0)
gate(G, B0, B) :- G =.. [_|Bits], length(B0, N), forall(member(I, Bits), ( integer(I), I >= 0, I < N )), gate_(G, B0, B).
gate_(x(T), B0, B) :- flip(T, B0, B).
gate_(cnot(C, T), B0, B) :- ( nth0(C, B0, 1) -> flip(T, B0, B) ; B = B0 ).
gate_(ccnot(C1, C2, T), B0, B) :- ( nth0(C1, B0, 1), nth0(C2, B0, 1) -> flip(T, B0, B) ; B = B0 ).
run(G, B0, B) :- foldl(gate, G, B0, B1), B = B1.

bits(N, B) :- length(B, N), maplist([X]>>member(X, [0, 1]), B).

% Specs (what the circuit should do to every input).
spec(xor_into_2, [A, B, C], [A, B, D]) :- D is C xor (A xor B).
spec(half_adder, [A, B, S, C], [A, B, S2, C2]) :- S2 is S xor (A xor B), C2 is C xor (A /\ B).
spec(swap01, [A, B|R], [B, A|R]).
spec(toffoli, [A, B, C], [A, B, D]) :- D is C xor (A /\ B).
spec(identity, B, B).

adder([ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)]).

% verify(+Circuit, +N, +Spec, -Result): ok, or counterexample(Input, want(W), got(G)) for the first input that differs.
% An input where the circuit or the spec gives no answer (a gate on a bit that is not there, or a spec
% for another width) is reported as cannot_run(Input, circuit) or cannot_run(Input, spec), so ok always
% means the circuit ran and matched on every input.
verify(G, N, S, R) :- ( bits(N, B), \+ spec(S, B, _) -> R = cannot_run(B, spec)
    ; bits(N, B), \+ run(G, B, _) -> R = cannot_run(B, circuit)
    ; bits(N, B), spec(S, B, W), run(G, B, Got), Got \== W -> R = counterexample(B, want(W), got(Got)) ; R = ok ).

% reversible(+Circuit, +N): no two inputs give the same output.
reversible(G, N) :- findall(O, ( bits(N, B), run(G, B, O) ), Os), sort(Os, S), length(Os, L), length(S, L).
inverse(G, I) :- reverse(G, I).    % every gate here is its own inverse
