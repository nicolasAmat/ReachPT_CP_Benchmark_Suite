% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p_0_1;
var 0..MAX: p_0_0;
var 0..MAX: p_1_0;
var 0..MAX: p_1_1;
var 0..MAX: p_0_2;
var 0..MAX: p_1_2;
var 0..MAX: p_2_0;
var 0..MAX: p_2_1;
var 0..MAX: p_2_2;

% Additional variables and reduction equations
var 0..MAX: a1;
var 0..MAX: a2;
var 0..MAX: a3;
var 0..MAX: a4;
var 0..MAX: a5;
var 0..MAX: a6;
var 0..MAX: a7;
var 0..MAX: a8;
constraint a1 = (p * 0) + (p * 0);
constraint a2 = (p * 0) + (p * 1);
constraint a3 = (p * 1) + a2;
constraint a4 = (p * 1) + (p * 2);
constraint a5 = (p * 2) + a4;
constraint a6 = (p * 2) + a3;
constraint a7 = a1 + a6;
constraint a8 = a5 + a7;
constraint a8 = 9;

% Reachability formula
constraint (not ((not ((p_0_1 <= p_0_2)))));

% Check satisfiability
solve satisfy;
