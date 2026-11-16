# qverify

prove that a reversible circuit (as pl2qc would make) matches its Prolog spec on every basis state. Circuits use x(T), cnot(C, T) and ccnot(C1, C2, T) on bit registers; a spec is a Prolog predicate on lists of bits. verify/4 checks all 2^N inputs and returns ok or the first counterexample; reversibility and inverses are checked the same way.

## Use

```prolog
?- use_module(prolog/qverify).
?- verify([cnot(0, 2), cnot(1, 2)], 3, xor_into_2, R).          % R = ok
?- verify([cnot(0, 2)], 3, xor_into_2, R).                      % R = counterexample([0,1,0], want([0,1,1]), got([0,1,0]))
?- adder(C), verify(C, 4, half_adder, R).                       % R = ok
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every circuit of up to 2 gates on 3 bits; the specs on 3 bits.

1. Every circuit is reversible (a permutation of the basis states).
2. A circuit followed by its inverse is the identity.
3. ok means the circuit matches the spec on every input; a counterexample is real.
4. The known circuits are verified: the adder, xor, toffoli and swap (three cnots).

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
