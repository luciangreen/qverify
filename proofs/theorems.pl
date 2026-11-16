% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/qverify').

% Domain: every circuit of up to 2 gates on 3 bits; the specs on 3 bits.
gate3(G) :- between(0, 2, T), ( G = x(T) ; between(0, 2, C), C \== T, G = cnot(C, T) ; between(0, 2, C1), between(0, 2, C2), C1 < C2, C1 \== T, C2 \== T, G = ccnot(C1, C2, T) ).
circuit(Gs) :- between(0, 2, L), length(Gs, L), maplist(gate3, Gs).

% 1. Every circuit is reversible (a permutation of the basis states).
theorem(circuits_are_reversible) :- forall(circuit(G), reversible(G, 3)).

% 2. A circuit followed by its inverse is the identity.
theorem(inverse_undoes) :- forall(( circuit(G), bits(3, B) ), ( run(G, B, O), inverse(G, I), run(I, O, B2), B2 == B )).

% 3. ok means the circuit matches the spec on every input; a counterexample is real.
theorem(verdicts_are_true) :- forall(( circuit(G), member(S, [xor_into_2, toffoli, swap01, identity]), verify(G, 3, S, R) ),
    ( R == ok -> forall(bits(3, B), ( spec(S, B, W), run(G, B, W) )) ; R = counterexample(B, want(W), got(Got)), spec(S, B, W), run(G, B, Got), Got \== W )).

% 4. The known circuits are verified: the adder, xor, toffoli and swap (three cnots).
theorem(known_circuits_verified) :- adder(A), verify(A, 4, half_adder, ok), verify([cnot(0, 2), cnot(1, 2)], 3, xor_into_2, ok),
    verify([ccnot(0, 1, 2)], 3, toffoli, ok), verify([cnot(0, 1), cnot(1, 0), cnot(0, 1)], 3, swap01, ok), verify([], 3, identity, ok).
