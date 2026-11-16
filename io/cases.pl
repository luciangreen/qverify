:- module(cases, [title/1, case/3]).
:- use_module('../prolog/qverify').
:- use_module(engine).
title('qverify').
gate_g(N, G) :- Top is N - 1, rnd_int(0, Top, T), rnd_int(0, Top, C0), C is (C0 + 1 + T) mod N, rnd_int(0, Top, D0), D is (D0 + 2 + T) mod N,
    ( C =:= T -> G = x(T) ; D =:= T ; D =:= C -> rnd_pick([x(T), cnot(C, T)], G) ; rnd_pick([x(T), cnot(C, T), ccnot(C, D, T)], G) ).
circ_g(N, Gs) :- rnd_int(0, 4, L), length(Gs, L), maplist(gate_g(N), Gs).
case(verify3, [G, 3, S], verify) :- circ_g(3, G), rnd_pick([xor_into_2, toffoli, swap01, identity], S).
case(run, [G, B], run) :- rnd_int(3, 4, N), circ_g(N, G), length(B, N), maplist([X]>>rnd_int(0, 1, X), B).
case(reversible, [G, N], reversible_bool) :- rnd_int(3, 4, N), circ_g(N, G).
case(verify_adder, [G, 4, half_adder], verify) :- adder(A), ( rnd_chance(50) -> G = A ; circ_g(4, G) ).
reversible_bool(G, N, B) :- ( reversible(G, N) -> B = true ; B = false ).
