% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, verify3, [[ccnot(1, 2, 0), x(1), x(2), cnot(2, 1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(2, run, [[ccnot(2, 3, 1)], [1, 1, 0, 0]], [1, 1, 0, 0]).
io(3, reversible, [[x(2), cnot(3, 2), ccnot(1, 3, 0)], 4], true).
io(4, verify_bad, [[x(3)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(5, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(6, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(7, run, [[x(2), x(2), x(2), x(2)], [1, 1, 0, 1]], [1, 1, 0, 1]).
io(8, reversible, [[cnot(0, 2), cnot(2, 0)], 3], true).
io(9, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(10, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(11, verify3, [[cnot(1, 2)], 3, xor_into_2], counterexample([1, 0, 0], want([1, 0, 1]), got([1, 0, 0]))).
io(12, run, [[], [1, 0, 1, 1]], [1, 0, 1, 1]).
io(13, reversible, [[x(0), cnot(2, 1), x(1), cnot(2, 0)], 3], true).
io(14, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(15, verify_adder, [[x(1), x(0), cnot(3, 2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 1, 0, 0]))).
io(16, verify3, [[x(2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(17, run, [[x(0), x(0)], [1, 1, 1, 0]], [1, 1, 1, 0]).
io(18, reversible, [[], 3], true).
io(19, verify_bad, [[cnot(0, 5)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(20, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(21, verify3, [[cnot(0, 1)], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(22, run, [[], [0, 1, 0, 1]], [0, 1, 0, 1]).
io(23, reversible, [[], 3], true).
io(24, verify_bad, [[x(3)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(25, verify_adder, [[cnot(0, 3), x(0), ccnot(2, 1, 0), cnot(2, 0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(26, verify3, [[cnot(2, 0), x(1), ccnot(0, 1, 2), x(2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 1]))).
io(27, run, [[x(1), x(0)], [0, 0, 1]], [1, 1, 1]).
io(28, reversible, [[], 3], true).
io(29, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(30, verify_adder, [[cnot(1, 3), x(0), ccnot(1, 0, 2), x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 1, 0]))).
io(31, verify3, [[x(1), x(2), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 1]))).
io(32, run, [[x(2), ccnot(0, 2, 1)], [0, 1, 1]], [0, 1, 0]).
io(33, reversible, [[cnot(2, 0)], 3], true).
io(34, verify_bad, [[x(3)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(35, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(36, verify3, [[x(0), x(1)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(37, run, [[cnot(1, 2), cnot(0, 1), cnot(2, 1)], [1, 1, 1]], [1, 0, 0]).
io(38, reversible, [[], 4], true).
io(39, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(40, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(41, verify3, [[x(2), x(1), x(1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(42, run, [[x(1), cnot(0, 2), x(0), x(2)], [0, 1, 0]], [1, 0, 1]).
io(43, reversible, [[], 4], true).
io(44, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(45, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(46, verify3, [[x(2)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(47, run, [[cnot(1, 2), cnot(3, 2), x(2)], [0, 1, 1, 1]], [0, 1, 0, 1]).
io(48, reversible, [[cnot(0, 2), ccnot(0, 2, 1), x(0), x(2)], 3], true).
io(49, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(50, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(51, verify3, [[], 3, identity], ok).
io(52, run, [[x(1), x(0), x(0), x(2)], [0, 0, 0]], [0, 1, 1]).
io(53, reversible, [[cnot(0, 2)], 3], true).
io(54, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(55, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(56, verify3, [[x(0), cnot(0, 2), ccnot(2, 1, 0)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(57, run, [[x(2), x(0)], [0, 1, 0, 0]], [1, 1, 1, 0]).
io(58, reversible, [[x(0), x(3)], 4], true).
io(59, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(60, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(61, verify3, [[cnot(1, 0), cnot(2, 1), x(1), x(2)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 1]))).
io(62, run, [[x(1), cnot(0, 3), x(1)], [1, 0, 1, 1]], [1, 0, 1, 0]).
io(63, reversible, [[x(1)], 4], true).
io(64, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(65, verify_adder, [[x(2), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 1, 0]))).
io(66, verify3, [[cnot(0, 2), x(2), x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(67, run, [[], [0, 0, 1]], [0, 0, 1]).
io(68, reversible, [[], 4], true).
io(69, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(70, verify_adder, [[ccnot(0, 3, 1)], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(71, verify3, [[x(1), x(2), x(2), cnot(2, 1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(72, run, [[], [0, 1, 0, 0]], [0, 1, 0, 0]).
io(73, reversible, [[x(2)], 3], true).
io(74, verify_bad, [[x(3)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(75, verify_adder, [[cnot(1, 3), x(3), cnot(2, 0), x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 1, 1]))).
io(76, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(77, run, [[], [1, 0, 0]], [1, 0, 0]).
io(78, reversible, [[x(2), cnot(2, 3), x(1)], 4], true).
io(79, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(80, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(81, verify3, [[], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 0]))).
io(82, run, [[cnot(3, 1)], [1, 1, 0, 1]], [1, 0, 0, 1]).
io(83, reversible, [[x(0), cnot(1, 0), x(3)], 4], true).
io(84, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(85, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(86, verify3, [[x(0), cnot(1, 2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(87, run, [[cnot(3, 0)], [1, 0, 0, 0]], [1, 0, 0, 0]).
io(88, reversible, [[], 4], true).
io(89, verify_bad, [[cnot(0, 5)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(90, verify_adder, [[cnot(1, 2), x(3), x(2), x(0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 1, 1]))).
io(91, verify3, [[cnot(2, 0), x(1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(92, run, [[x(0)], [1, 0, 1]], [0, 0, 1]).
io(93, reversible, [[], 4], true).
io(94, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(95, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(96, verify3, [[cnot(1, 2), x(0), x(2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(97, run, [[x(0)], [1, 0, 0]], [0, 0, 0]).
io(98, reversible, [[], 3], true).
io(99, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(100, verify_adder, [[x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 1, 0]))).
io(101, verify3, [[x(1)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(102, run, [[], [0, 1, 1, 1]], [0, 1, 1, 1]).
io(103, reversible, [[], 3], true).
io(104, verify_bad, [[x(3)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(105, verify_adder, [[x(0), x(0), cnot(2, 1)], 4, half_adder], counterexample([0, 0, 1, 0], want([0, 0, 1, 0]), got([0, 1, 1, 0]))).
io(106, verify3, [[x(2), x(1), x(2)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(107, run, [[x(0), x(1)], [0, 1, 1, 1]], [1, 0, 1, 1]).
io(108, reversible, [[ccnot(2, 1, 0), ccnot(0, 2, 1), x(3), ccnot(1, 3, 2)], 4], true).
io(109, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(110, verify_adder, [[cnot(0, 2), x(3), cnot(1, 3), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 1]))).
io(111, verify3, [[cnot(2, 1), x(2)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(112, run, [[cnot(1, 0), ccnot(0, 2, 1), x(3), x(2)], [0, 0, 1, 0]], [0, 0, 0, 1]).
io(113, reversible, [[x(1), x(0), x(2), ccnot(0, 3, 1)], 4], true).
io(114, verify_bad, [[x(3)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(115, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(116, verify3, [[x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(117, run, [[x(1), cnot(1, 2)], [0, 1, 1, 0]], [0, 0, 1, 0]).
io(118, reversible, [[x(2)], 3], true).
io(119, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(120, verify_adder, [[x(1), cnot(0, 1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 0]))).
io(121, verify3, [[], 3, toffoli], counterexample([1, 1, 0], want([1, 1, 1]), got([1, 1, 0]))).
io(122, run, [[x(0), ccnot(1, 2, 3)], [0, 0, 0, 0]], [1, 0, 0, 0]).
io(123, reversible, [[x(1), x(3), x(3), cnot(1, 3)], 4], true).
io(124, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(125, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(126, verify3, [[cnot(2, 1), cnot(0, 2), x(1)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(127, run, [[cnot(0, 2), x(3), ccnot(1, 0, 3), cnot(3, 2)], [0, 1, 1, 1]], [0, 1, 1, 0]).
io(128, reversible, [[cnot(2, 0)], 4], true).
io(129, verify_bad, [[x(3)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(130, verify_adder, [[x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 0]))).
io(131, verify3, [[], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 0]))).
io(132, run, [[x(0)], [1, 1, 1, 1]], [0, 1, 1, 1]).
io(133, reversible, [[cnot(3, 1), x(2), x(3)], 4], true).
io(134, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(135, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(136, verify3, [[cnot(2, 1), cnot(2, 1), cnot(1, 2)], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 1]))).
io(137, run, [[x(2), cnot(3, 0), x(3), x(2)], [0, 0, 0, 0]], [0, 0, 0, 1]).
io(138, reversible, [[], 4], true).
io(139, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(140, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(141, verify3, [[cnot(0, 2), cnot(1, 2)], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 1]))).
io(142, run, [[x(0), x(0), cnot(2, 1), x(1)], [1, 0, 0]], [1, 1, 0]).
io(143, reversible, [[x(2), x(2), x(2)], 4], true).
io(144, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(145, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(146, verify3, [[x(1), x(2), x(2)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(147, run, [[x(1), cnot(0, 3), cnot(0, 3)], [0, 0, 1, 0]], [0, 1, 1, 0]).
io(148, reversible, [[x(0), cnot(2, 0), ccnot(1, 0, 2), x(0)], 3], true).
io(149, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(150, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(151, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(152, run, [[x(2), x(1), x(1), cnot(1, 0)], [1, 1, 1]], [0, 1, 0]).
io(153, reversible, [[x(0), cnot(0, 2), x(2), x(3)], 4], true).
io(154, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(155, verify_adder, [[x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 1, 0]))).
io(156, verify3, [[x(0), cnot(2, 1), cnot(0, 2), x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(157, run, [[x(2), x(1), x(0)], [0, 0, 1, 1]], [1, 1, 0, 1]).
io(158, reversible, [[cnot(1, 2), x(1), ccnot(0, 1, 2)], 3], true).
io(159, verify_bad, [[x(3)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(160, verify_adder, [[x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 0]))).
io(161, verify3, [[x(0), x(0), x(2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(162, run, [[cnot(2, 0), x(2), cnot(0, 1)], [1, 1, 0]], [1, 0, 1]).
io(163, reversible, [[x(3), x(3)], 4], true).
io(164, verify_bad, [[x(3)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(165, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(166, verify3, [[cnot(0, 2), x(2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(167, run, [[cnot(2, 0), x(1)], [1, 1, 0]], [1, 0, 0]).
io(168, reversible, [[cnot(1, 3)], 4], true).
io(169, verify_bad, [[cnot(0, 5)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(170, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(171, verify3, [[], 3, identity], ok).
io(172, run, [[x(1)], [0, 1, 0]], [0, 0, 0]).
io(173, reversible, [[cnot(1, 2), cnot(0, 3)], 4], true).
io(174, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(175, verify_adder, [[x(1), x(3), x(3), ccnot(2, 3, 0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 0]))).
io(176, verify3, [[x(1), ccnot(2, 0, 1), cnot(2, 1)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(177, run, [[], [1, 0, 1]], [1, 0, 1]).
io(178, reversible, [[], 4], true).
io(179, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(180, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(181, verify3, [[], 3, toffoli], counterexample([1, 1, 0], want([1, 1, 1]), got([1, 1, 0]))).
io(182, run, [[ccnot(1, 3, 2), x(3), x(2)], [1, 1, 1, 0]], [1, 1, 0, 1]).
io(183, reversible, [[x(3), ccnot(1, 3, 2), ccnot(3, 2, 1), x(2)], 4], true).
io(184, verify_bad, [[x(0)], 3, half_adder], cannot_run([0, 0, 0], spec)).
io(185, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(186, verify3, [[], 3, toffoli], counterexample([1, 1, 0], want([1, 1, 1]), got([1, 1, 0]))).
io(187, run, [[ccnot(0, 2, 3), cnot(2, 3)], [0, 1, 0, 1]], [0, 1, 0, 1]).
io(188, reversible, [[x(1)], 3], true).
io(189, verify_bad, [[cnot(0, 5)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(190, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(191, verify3, [[ccnot(0, 2, 1), x(2), x(0), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(192, run, [[x(1), cnot(0, 2), x(1)], [1, 0, 0, 1]], [1, 0, 1, 1]).
io(193, reversible, [[x(0), x(1), ccnot(2, 1, 0), x(1)], 3], true).
io(194, verify_bad, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(195, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(196, verify3, [[cnot(1, 0), x(2), x(1), cnot(0, 1)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 1]))).
io(197, run, [[x(2)], [1, 1, 0]], [1, 1, 1]).
io(198, reversible, [[x(2), x(1), x(0)], 3], true).
io(199, verify_bad, [[cnot(0, 5)], 3, identity], cannot_run([0, 0, 0], circuit)).
io(200, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
