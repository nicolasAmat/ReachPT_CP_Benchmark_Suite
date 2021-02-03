% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: voting_1;
var 0..MAX: voted_no_1;
var 0..MAX: voting_2;
var 0..MAX: voted_no_2;
var 0..MAX: voting_3;
var 0..MAX: voted_no_3;
var 0..MAX: voting_4;
var 0..MAX: voted_no_4;
var 0..MAX: voting_5;
var 0..MAX: voted_no_5;
var 0..MAX: voting_6;
var 0..MAX: voted_no_6;
var 0..MAX: voting_7;
var 0..MAX: voted_no_7;
var 0..MAX: voting_8;
var 0..MAX: voted_no_8;
var 0..MAX: voting_9;
var 0..MAX: voted_no_9;
var 0..MAX: voting_10;
var 0..MAX: voted_no_10;
var 0..MAX: ready;
var 0..MAX: voted_yes_1;
var 0..MAX: voted_yes_2;
var 0..MAX: voted_yes_3;
var 0..MAX: voted_yes_4;
var 0..MAX: voted_yes_5;
var 0..MAX: voted_yes_6;
var 0..MAX: voted_yes_7;
var 0..MAX: voted_yes_8;
var 0..MAX: voted_yes_9;
var 0..MAX: voted_yes_10;

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
constraint a1 = voted_no_1 + voting_1;
constraint a2 = voted_yes_1 + a1;
constraint a3 = voted_no_10 + voting_10;
constraint a4 = voted_yes_10 + a3;
constraint a5 = voted_no_2 + voting_2;
constraint a6 = voted_yes_2 + a5;
constraint a7 = voted_no_3 + voting_3;
constraint a8 = voted_yes_3 + a7;
constraint a9 = voted_no_4 + voting_4;
constraint a10 = voted_yes_4 + a9;
constraint a11 = voted_no_5 + voting_5;
constraint a12 = voted_yes_5 + a11;
constraint a13 = voted_no_6 + voting_6;
constraint a14 = voted_yes_6 + a13;
constraint a15 = voted_no_7 + voting_7;
constraint a16 = voted_yes_7 + a15;
constraint a17 = voted_no_8 + voting_8;
constraint a18 = voted_yes_8 + a17;
constraint a19 = voted_no_9 + voting_9;
constraint a20 = voted_yes_9 + a19;
constraint a4 = a2;
constraint a6 = a2;
constraint a8 = a2;
constraint a10 = a2;
constraint a12 = a2;
constraint a14 = a2;
constraint a16 = a2;
constraint a18 = a2;
constraint a20 = a2;
constraint a21 = a2 + ready;
constraint a21 = 1;

% Reachability formula
constraint (not (((not ((not ((1 <= ready))))) \/ ((((voted_no_1 + voted_no_2 + voted_no_3 + voted_no_4 + voted_no_5 + voted_no_6 + voted_no_7 + voted_no_8 + voted_no_9 + voted_no_10) <= (voted_yes_1 + voted_yes_2 + voted_yes_3 + voted_yes_4 + voted_yes_5 + voted_yes_6 + voted_yes_7 + voted_yes_8 + voted_yes_9 + voted_yes_10)) \/ (ready <= (voting_1 + voting_2 + voting_3 + voting_4 + voting_5 + voting_6 + voting_7 + voting_8 + voting_9 + voting_10))) \/ (((voted_yes_1 + voted_yes_2 + voted_yes_3 + voted_yes_4 + voted_yes_5 + voted_yes_6 + voted_yes_7 + voted_yes_8 + voted_yes_9 + voted_yes_10) <= (voting_1 + voting_2 + voting_3 + voting_4 + voting_5 + voting_6 + voting_7 + voting_8 + voting_9 + voting_10)) \/ (ready <= ready))))));

% Check satisfiability
solve satisfy;
