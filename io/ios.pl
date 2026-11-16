% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, verify3, [[ccnot(1, 2, 0), x(1), x(2), cnot(2, 1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(2, run, [[ccnot(2, 3, 1)], [1, 1, 0, 0]], [1, 1, 0, 0]).
io(3, reversible, [[_678, x(0), x(2)], 4], false).
io(4, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(5, verify3, [[x(0), x(0), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(6, run, [[x(0), x(1), x(0), x(0)], [1, 0, 1]], [0, 1, 1]).
io(7, reversible, [[x(2), _1024, cnot(0, 1), x(1)], 3], false).
io(8, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(9, verify3, [[], 3, identity], ok).
io(10, run, [[cnot(2, 0)], [0, 0, 0]], [0, 0, 0]).
io(11, reversible, [[ccnot(2, 0, 1), x(0), x(3), ccnot(2, 1, 0)], 4], true).
io(12, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(13, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(14, run, [[x(0)], [0, 0, 0]], [1, 0, 0]).
io(15, reversible, [[_1544, x(2), x(1), cnot(1, 0)], 4], false).
io(16, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(17, verify3, [[x(0), x(1), ccnot(0, 2, 1), x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(18, run, [[x(0)], [1, 1, 0]], [0, 1, 0]).
io(19, reversible, [[ccnot(2, 1, 0), cnot(2, 0)], 4], true).
io(20, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(21, verify3, [[x(0), x(1), ccnot(0, 1, 2), x(0)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 1]))).
io(22, run, [[x(2)], [0, 1, 0]], [0, 1, 1]).
io(23, reversible, [[cnot(0, 1), cnot(0, 1), cnot(0, 2)], 3], true).
io(24, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(25, verify3, [[cnot(1, 0), cnot(0, 2)], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([1, 1, 1]))).
io(26, run, [[x(0)], [0, 1, 0, 0]], [1, 1, 0, 0]).
io(27, reversible, [[], 4], true).
io(28, verify_adder, [[x(1), x(3), cnot(0, 2), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 0, 1]))).
io(29, verify3, [[x(0), x(0), x(0), x(1)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(30, run, [[cnot(1, 2), x(0), cnot(2, 0)], [1, 1, 1]], [0, 1, 0]).
io(31, reversible, [[], 4], true).
io(32, verify_adder, [[x(1), x(0), cnot(2, 1), x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 1, 1, 0]))).
io(33, verify3, [[x(1), cnot(0, 2), x(0), x(2)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 1]))).
io(34, run, [[x(0)], [0, 0, 1, 1]], [1, 0, 1, 1]).
io(35, reversible, [[x(1), x(0), x(0), _3426], 3], false).
io(36, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(37, verify3, [[cnot(1, 0)], 3, toffoli], counterexample([0, 1, 0], want([0, 1, 0]), got([1, 1, 0]))).
io(38, run, [[cnot(0, 2), ccnot(0, 2, 1), x(0), x(2)], [1, 0, 1]], [0, 0, 1]).
io(39, reversible, [[_3758, x(3)], 4], false).
io(40, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(41, verify3, [[cnot(1, 0)], 3, identity], counterexample([0, 1, 0], want([0, 1, 0]), got([1, 1, 0]))).
io(42, run, [[], [0, 0, 0, 0]], [0, 0, 0, 0]).
io(43, reversible, [[ccnot(1, 2, 3), x(0)], 4], true).
io(44, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(45, verify3, [[x(1), x(0), ccnot(2, 1, 0), x(2)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 1]))).
io(46, run, [[], [0, 1, 0, 0]], [0, 1, 0, 0]).
io(47, reversible, [[], 4], true).
io(48, verify_adder, [[x(3)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 0, 1]))).
io(49, verify3, [[x(1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(50, run, [[x(0), x(1), x(1), x(0)], [1, 0, 1, 0]], [1, 0, 1, 0]).
io(51, reversible, [[x(1), cnot(0, 3), _4714], 4], false).
io(52, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(53, verify3, [[x(0), ccnot(2, 1, 0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(54, run, [[ccnot(3, 1, 2), ccnot(3, 0, 1), cnot(2, 3)], [0, 0, 1, 1]], [0, 0, 1, 0]).
io(55, reversible, [[x(0), ccnot(1, 0, 2)], 3], true).
io(56, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(57, verify3, [[x(0), x(0), x(1)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(58, run, [[x(0)], [1, 1, 1]], [0, 1, 1]).
io(59, reversible, [[x(0)], 3], true).
io(60, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(61, verify3, [[x(0), x(0), x(2)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(62, run, [[x(2), x(0), cnot(1, 2), x(0)], [0, 1, 0]], [0, 1, 0]).
io(63, reversible, [[ccnot(1, 2, 0)], 3], true).
io(64, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(65, verify3, [[cnot(0, 2), x(0), x(1)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(66, run, [[x(3), x(3), cnot(0, 2)], [0, 1, 1, 0]], [0, 1, 1, 0]).
io(67, reversible, [[cnot(2, 1), cnot(1, 2)], 3], true).
io(68, verify_adder, [[x(1), x(0), x(3), ccnot(0, 3, 1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 1]))).
io(69, verify3, [[x(1), x(1), x(2), ccnot(1, 0, 2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(70, run, [[x(0), cnot(3, 2), x(3)], [1, 0, 1, 0]], [0, 0, 1, 1]).
io(71, reversible, [[], 3], true).
io(72, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(73, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(74, run, [[x(3), cnot(0, 2)], [1, 1, 0, 1]], [1, 1, 1, 0]).
io(75, reversible, [[x(2), ccnot(0, 3, 1), x(1)], 4], true).
io(76, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(77, verify3, [[x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(78, run, [[x(0), x(1)], [0, 1, 0]], [1, 0, 0]).
io(79, reversible, [[cnot(2, 1)], 3], true).
io(80, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(81, verify3, [[x(0), x(2), x(1)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 1]))).
io(82, run, [[x(1), cnot(0, 2)], [0, 0, 1]], [0, 1, 1]).
io(83, reversible, [[x(1), x(2), x(1), x(0)], 3], true).
io(84, verify_adder, [[x(1), x(1)], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(85, verify3, [[cnot(0, 2), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(86, run, [[ccnot(0, 2, 1), ccnot(1, 0, 2), x(0), x(1)], [1, 1, 1]], [0, 1, 1]).
io(87, reversible, [[_7862, x(2)], 4], false).
io(88, verify_adder, [[x(0), cnot(1, 0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(89, verify3, [[cnot(1, 0)], 3, identity], counterexample([0, 1, 0], want([0, 1, 0]), got([1, 1, 0]))).
io(90, run, [[x(3), x(0)], [1, 0, 1, 1]], [0, 0, 1, 0]).
io(91, reversible, [[x(2), cnot(0, 2), x(2), x(0)], 3], true).
io(92, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(93, verify3, [[x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(94, run, [[x(1), x(0)], [1, 0, 1, 1]], [0, 1, 1, 1]).
io(95, reversible, [[], 3], true).
io(96, verify_adder, [[ccnot(3, 0, 1), x(0), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 1, 0, 0]))).
io(97, verify3, [[cnot(0, 1)], 3, identity], counterexample([1, 0, 0], want([1, 0, 0]), got([1, 1, 0]))).
io(98, run, [[x(0), x(0), x(2)], [0, 0, 1]], [0, 0, 0]).
io(99, reversible, [[], 4], true).
io(100, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(101, verify3, [[cnot(1, 2), x(2), x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(102, run, [[x(0), x(0), cnot(0, 2)], [0, 0, 1]], [0, 0, 1]).
io(103, reversible, [[], 3], true).
io(104, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(105, verify3, [[cnot(1, 0), x(1), x(0), x(2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 1]))).
io(106, run, [[ccnot(1, 0, 3), x(0), cnot(0, 1), cnot(1, 3)], [0, 0, 0, 1]], [1, 1, 0, 0]).
io(107, reversible, [[x(0), cnot(0, 1), cnot(2, 1)], 3], true).
io(108, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(109, verify3, [[x(0), x(0), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(110, run, [[x(0), x(2), x(1)], [1, 0, 0]], [0, 1, 1]).
io(111, reversible, [[cnot(3, 0)], 4], true).
io(112, verify_adder, [[x(0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(113, verify3, [[], 3, toffoli], counterexample([1, 1, 0], want([1, 1, 1]), got([1, 1, 0]))).
io(114, run, [[], [0, 0, 1]], [0, 0, 1]).
io(115, reversible, [[x(1), x(0), _10214], 4], false).
io(116, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(117, verify3, [[], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 0]))).
io(118, run, [[x(0), x(0), cnot(2, 1)], [0, 1, 1]], [0, 0, 1]).
io(119, reversible, [[x(0), x(2), _10510], 3], false).
io(120, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(121, verify3, [[cnot(1, 0), x(1)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(122, run, [[x(0), x(3)], [0, 0, 1, 0]], [1, 0, 1, 1]).
io(123, reversible, [[x(0), cnot(0, 3), cnot(0, 3)], 4], true).
io(124, verify_adder, [[x(0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(125, verify3, [[x(0), cnot(2, 0), ccnot(1, 0, 2), x(0)], 3, identity], counterexample([0, 0, 1], want([0, 0, 1]), got([1, 0, 1]))).
io(126, run, [[x(0), x(0), ccnot(0, 1, 3)], [1, 1, 0, 0]], [1, 1, 0, 1]).
io(127, reversible, [[], 3], true).
io(128, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(129, verify3, [[cnot(2, 0), x(1), x(2), cnot(1, 2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(130, run, [[x(1), x(1), ccnot(0, 1, 2)], [1, 0, 1]], [1, 0, 1]).
io(131, reversible, [[x(3), x(1), cnot(2, 0)], 4], true).
io(132, verify_adder, [[x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 0, 0]))).
io(133, verify3, [[], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(134, run, [[x(0)], [0, 1, 0]], [1, 1, 0]).
io(135, reversible, [[x(1), cnot(0, 2), _11908], 3], false).
io(136, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(137, verify3, [[x(0), x(0), x(1), x(0)], 3, swap01], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(138, run, [[cnot(2, 0), x(1), x(1)], [0, 1, 0]], [0, 1, 0]).
io(139, reversible, [[], 3], true).
io(140, verify_adder, [[], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(141, verify3, [[x(0), x(0), x(0), x(2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(142, run, [[x(0), x(3), cnot(2, 0)], [1, 0, 0, 0]], [0, 0, 0, 1]).
io(143, reversible, [[], 3], true).
io(144, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(145, verify3, [[ccnot(0, 2, 1), x(2), cnot(1, 0), x(0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 1]))).
io(146, run, [[], [1, 0, 0, 0]], [1, 0, 0, 0]).
io(147, reversible, [[x(0)], 4], true).
io(148, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(149, verify3, [[x(0), x(1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(150, run, [[cnot(3, 1), ccnot(2, 3, 1)], [0, 1, 0, 1]], [0, 0, 0, 1]).
io(151, reversible, [[ccnot(3, 1, 2)], 4], true).
io(152, verify_adder, [[x(0), x(1), ccnot(2, 1, 3)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 1, 0, 0]))).
io(153, verify3, [[x(1), cnot(0, 2), x(1)], 3, xor_into_2], counterexample([0, 1, 0], want([0, 1, 1]), got([0, 1, 0]))).
io(154, run, [[], [1, 1, 0, 0]], [1, 1, 0, 0]).
io(155, reversible, [[x(2), x(2), cnot(2, 1)], 3], true).
io(156, verify_adder, [[ccnot(0, 2, 1), x(0), x(3), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 1, 0, 1]))).
io(157, verify3, [[ccnot(2, 0, 1), x(0), x(0), x(1)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 0]))).
io(158, run, [[], [0, 1, 1]], [0, 1, 1]).
io(159, reversible, [[ccnot(0, 2, 1), x(1), x(1)], 3], true).
io(160, verify_adder, [[x(2), x(2), x(0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(161, verify3, [[], 3, toffoli], counterexample([1, 1, 0], want([1, 1, 1]), got([1, 1, 0]))).
io(162, run, [[x(2), x(0), x(0)], [0, 1, 1]], [0, 1, 0]).
io(163, reversible, [[ccnot(1, 3, 2), cnot(0, 3), x(1)], 4], true).
io(164, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(165, verify3, [[x(2), x(0), cnot(0, 2), ccnot(1, 2, 0)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 0, 0]))).
io(166, run, [[ccnot(3, 1, 2), cnot(3, 1), cnot(2, 3), cnot(3, 0)], [0, 0, 1, 0]], [1, 0, 1, 1]).
io(167, reversible, [[x(1)], 3], true).
io(168, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(169, verify3, [[], 3, identity], ok).
io(170, run, [[], [0, 0, 1]], [0, 0, 1]).
io(171, reversible, [[_42204, _42210, ccnot(3, 1, 0), x(3)], 4], false).
io(172, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(173, verify3, [[x(2)], 3, identity], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 0, 1]))).
io(174, run, [[x(0), x(0), x(2), cnot(2, 1)], [1, 0, 1]], [1, 0, 0]).
io(175, reversible, [[ccnot(2, 3, 1)], 4], true).
io(176, verify_adder, [[ccnot(0, 1, 3), cnot(0, 2), cnot(1, 2)], 4, half_adder], ok).
io(177, verify3, [[x(0), x(1)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(178, run, [[cnot(1, 2), x(2)], [1, 0, 0]], [1, 0, 1]).
io(179, reversible, [[cnot(0, 3)], 4], true).
io(180, verify_adder, [[ccnot(2, 0, 3), x(0)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 0, 0]))).
io(181, verify3, [[x(0), x(1), cnot(2, 0)], 3, xor_into_2], counterexample([0, 0, 0], want([0, 0, 0]), got([1, 1, 0]))).
io(182, run, [[ccnot(2, 0, 3), x(2), x(0), x(2)], [1, 0, 1, 0]], [0, 0, 1, 1]).
io(183, reversible, [[x(1), _56816], 3], false).
io(184, verify_adder, [[ccnot(3, 0, 2)], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(185, verify3, [[cnot(1, 2)], 3, toffoli], counterexample([0, 1, 0], want([0, 1, 0]), got([0, 1, 1]))).
io(186, run, [[x(0), x(0), ccnot(1, 0, 2)], [1, 0, 0]], [1, 0, 0]).
io(187, reversible, [[x(1), cnot(0, 3), ccnot(0, 3, 2), _61302], 4], false).
io(188, verify_adder, [[x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 0, 1, 0]))).
io(189, verify3, [[], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 0]))).
io(190, run, [[x(0), x(0)], [1, 1, 0]], [1, 1, 0]).
io(191, reversible, [[x(0), x(0), x(0), _65746], 3], false).
io(192, verify_adder, [[cnot(0, 1), cnot(0, 3)], 4, half_adder], counterexample([0, 1, 0, 0], want([0, 1, 1, 0]), got([0, 1, 0, 0]))).
io(193, verify3, [[], 3, swap01], counterexample([0, 1, 0], want([1, 0, 0]), got([0, 1, 0]))).
io(194, run, [[], [0, 0, 0, 0]], [0, 0, 0, 0]).
io(195, reversible, [[], 3], true).
io(196, verify_adder, [[x(1), x(1), x(0), x(2)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([1, 0, 1, 0]))).
io(197, verify3, [[x(1), x(2), x(0), x(0)], 3, toffoli], counterexample([0, 0, 0], want([0, 0, 0]), got([0, 1, 1]))).
io(198, run, [[cnot(2, 1)], [1, 1, 1, 0]], [1, 0, 1, 0]).
io(199, reversible, [[_75504, _75510, cnot(2, 3)], 4], false).
io(200, verify_adder, [[x(2), x(3), x(3), x(1)], 4, half_adder], counterexample([0, 0, 0, 0], want([0, 0, 0, 0]), got([0, 1, 1, 0]))).
