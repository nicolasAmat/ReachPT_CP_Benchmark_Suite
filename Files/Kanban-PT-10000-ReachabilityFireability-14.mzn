% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: Pback1;
var 0..MAX: Pm1;
var 0..MAX: Pback2;
var 0..MAX: Pm2;
var 0..MAX: Pback3;
var 0..MAX: Pm3;
var 0..MAX: Pback4;
var 0..MAX: Pm4;
var 0..MAX: P4;
var 0..MAX: Pout1;
var 0..MAX: Pout2;
var 0..MAX: Pout3;
var 0..MAX: Pout4;
var 0..MAX: P1;
var 0..MAX: P2;
var 0..MAX: P3;

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
constraint P3 = P2;
constraint a1 = Pout1 + Pm1;
constraint a2 = Pback1 + a1;
constraint a3 = Pout2 + Pm2;
constraint a4 = Pback2 + a3;
constraint a5 = Pout3 + Pm3;
constraint a6 = Pback3 + a5;
constraint a7 = Pout4 + Pm4;
constraint a8 = Pback4 + a7;
constraint a9 = a8 + P4;
constraint a9 = 10000;
constraint a6 = a4;
constraint a10 = a4 + P2;
constraint a10 = 10000;
constraint a11 = a2 + P1;
constraint a11 = 10000;

% Reachability formula
constraint (not (((not ((((Pm1 >= 1) /\ (P4 >= 1)) /\ ((P4 >= 1) /\ (Pm4 >= 1))))) \/ ((not ((Pout1 >= 1))) \/ (Pback2 >= 1)))));

% Check satisfiability
solve satisfy;
