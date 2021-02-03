% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: pbl_1_1;
var 0..MAX: pi_d1_n1_1_1;
var 0..MAX: pb_d1_n2_1_1;
var 0..MAX: pil_d1_n1_1_1;
var 0..MAX: pb_d2_n1_1_1;
var 0..MAX: pb_d2_n2_1_1;
var 0..MAX: po_d1_n1_1_1;
var 0..MAX: pb_d1_n1_1_1;
var 0..MAX: pol_d1_n1_1_1;
var 0..MAX: pi_d2_n1_1_1;
var 0..MAX: pil_d2_n1_1_1;
var 0..MAX: po_d2_n1_1_1;
var 0..MAX: pol_d2_n1_1_1;

% Additional variables and reduction equations
var 0..MAX: d1;
var 0..MAX: d2;
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
constraint (pbl * 1) = (pi * d1) + (pi * d2) + (po * d1) + (po * d2);
constraint a1 = (pb * d1) + (pi * d1);
constraint a2 = (pil * d1) + (pi * d1);
constraint a3 = (pb * d2) + (pi * d2);
constraint a4 = (pil * d2) + (pi * d2);
constraint a5 = (pb * d1) + (po * d1);
constraint a6 = (pol * d1) + (po * d1);
constraint a7 = (pb * d2) + (po * d2);
constraint a8 = (pol * d2) + (po * d2);
constraint a2 = 1;
constraint a4 = 1;
constraint a6 = 1;
constraint a8 = 1;
constraint a9 = a5 + a3;
constraint a10 = a1 + a9;
constraint a11 = a7 + a10;
constraint a11 = 32;

% Reachability formula
constraint (not (((pol_d1_n1_1_1 <= pb_d2_n2_1_1) /\ (((1 <= pol_d1_n1_1_1) \/ (3 <= pb_d2_n1_1_1)) \/ (not ((1 <= pb_d1_n1_1_1)))))));

% Check satisfiability
solve satisfy;
