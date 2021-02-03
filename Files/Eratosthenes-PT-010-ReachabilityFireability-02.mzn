% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p10;
var 0..MAX: p2;
var 0..MAX: p5;
var 0..MAX: p4;
var 0..MAX: p6;
var 0..MAX: p3;
var 0..MAX: p8;
var 0..MAX: p9;
var 0..MAX: p7;

% Additional variables and reduction equations
constraint p2 = 1;
constraint p3 = 1;
constraint p5 = 1;
constraint p7 = 1;
constraint p10 <= 1;
constraint p4 <= 1;
constraint p6 <= 1;
constraint p8 <= 1;
constraint p9 <= 1;

% Reachability formula
constraint ((not (((((p3 >= 1) /\ (p9 >= 1)) /\ ((p4 >= 1) /\ (p8 >= 1))) \/ (((p3 >= 1) /\ (p6 >= 1)) /\ ((p3 >= 1) /\ (p6 >= 1)))))) /\ (((p2 >= 1) /\ (p8 >= 1)) \/ (not ((not (((p2 >= 1) /\ (p4 >= 1))))))));

% Check satisfiability
solve satisfy;
