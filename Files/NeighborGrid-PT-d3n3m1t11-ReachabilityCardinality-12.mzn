% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p_0_0_1;
var 0..MAX: p_0_0_0;
var 0..MAX: p_0_0_2;
var 0..MAX: p_0_1_0;
var 0..MAX: p_0_2_0;
var 0..MAX: p_1_0_0;
var 0..MAX: p_2_0_0;
var 0..MAX: p_0_1_1;
var 0..MAX: p_0_2_1;
var 0..MAX: p_1_0_1;
var 0..MAX: p_2_0_1;
var 0..MAX: p_0_1_2;
var 0..MAX: p_0_2_2;
var 0..MAX: p_1_0_2;
var 0..MAX: p_2_0_2;
var 0..MAX: p_1_1_0;
var 0..MAX: p_2_1_0;
var 0..MAX: p_1_1_1;
var 0..MAX: p_2_1_1;
var 0..MAX: p_1_1_2;
var 0..MAX: p_2_1_2;
var 0..MAX: p_1_2_0;
var 0..MAX: p_2_2_0;
var 0..MAX: p_1_2_1;
var 0..MAX: p_2_2_1;
var 0..MAX: p_1_2_2;
var 0..MAX: p_2_2_2;

% Additional variables and reduction equations
var 0..MAX: a1;
var 0..MAX: a2;
var 0..MAX: a3;
var 0..MAX: a4;
var 0..MAX: a5;
var 0..MAX: a6;
var 0..MAX: a7;
var 0..MAX: a8;
var 0..MAX: a9;
var 0..MAX: a10;
var 0..MAX: a11;
var 0..MAX: a12;
var 0..MAX: a13;
var 0..MAX: a14;
var 0..MAX: a15;
var 0..MAX: a16;
var 0..MAX: a17;
var 0..MAX: a18;
var 0..MAX: a19;
var 0..MAX: a20;
var 0..MAX: a21;
var 0..MAX: a22;
var 0..MAX: a23;
var 0..MAX: a24;
var 0..MAX: a25;
var 0..MAX: a26;
constraint a1 = (p * 0) + (p * 0);
constraint a2 = (p * 0) + (p * 0);
constraint a3 = (p * 0) + (p * 0);
constraint a4 = (p * 0) + (p * 0);
constraint a5 = (p * 0) + (p * 1);
constraint a6 = (p * 1) + (p * 1);
constraint a7 = (p * 1) + (p * 1);
constraint a8 = (p * 1) + (p * 1);
constraint a9 = (p * 1) + (p * 1);
constraint a10 = (p * 2) + (p * 2);
constraint a11 = (p * 2) + (p * 2);
constraint a12 = (p * 2) + (p * 2);
constraint a13 = (p * 2) + (p * 2);
constraint a14 = (p * 2) + a5;
constraint a15 = a1 + a2;
constraint a16 = a3 + a15;
constraint a17 = a4 + a14;
constraint a18 = a6 + a7;
constraint a19 = a8 + a18;
constraint a20 = a9 + a17;
constraint a21 = a10 + a11;
constraint a22 = a12 + a21;
constraint a23 = a13 + a20;
constraint a24 = a16 + a23;
constraint a25 = a19 + a24;
constraint a26 = a22 + a25;
constraint a26 = 27;

% Reachability formula
constraint (not ((((1 <= p_0_2_0) \/ (p_2_1_0 <= p_1_1_2)) \/ (1 <= p_1_2_0))));

% Check satisfiability
solve satisfy;
