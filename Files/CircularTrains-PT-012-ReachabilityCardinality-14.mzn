% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: F11;
var 0..MAX: Section_10;
var 0..MAX: F9;
var 0..MAX: Section_11;
var 0..MAX: F12;
var 0..MAX: F10;
var 0..MAX: Section_12;
var 0..MAX: F1;
var 0..MAX: Section_1;
var 0..MAX: F2;
var 0..MAX: Section_2;
var 0..MAX: F3;
var 0..MAX: Section_3;
var 0..MAX: F4;
var 0..MAX: Section_4;
var 0..MAX: F5;
var 0..MAX: Section_5;
var 0..MAX: F6;
var 0..MAX: Section_6;
var 0..MAX: F7;
var 0..MAX: Section_7;
var 0..MAX: F8;
var 0..MAX: Section_8;
var 0..MAX: Section_9;

% Additional variables and reduction equations
var 0..MAX: a1;
var 0..MAX: a2;
var 0..MAX: a3;
var 0..MAX: a4;
var 0..MAX: a5;
var 0..MAX: a6;
var 0..MAX: a7;
var 0..MAX: a8;
constraint F11 = F10 + F12 + Section_1 + Section_10;
constraint F2 = F1 + F3 + Section_1 + Section_4;
constraint F5 = F4 + F6 + Section_4 + Section_7;
constraint F8 = F7 + F9 + Section_10 + Section_7;
constraint a1 = F12 + Section_1;
constraint a2 = Section_2 + Section_1;
constraint a3 = F9 + Section_10;
constraint a4 = Section_11 + Section_10;
constraint a5 = F3 + Section_4;
constraint a6 = Section_5 + Section_4;
constraint a7 = F6 + Section_7;
constraint a8 = Section_8 + Section_7;
constraint F1 + F10 + a1 + a5 + F4 + a7 + F7 + a3 = 4;
constraint F10 + a4 = 1;
constraint a1 + Section_12 = 1;
constraint F1 + a2 = 1;
constraint a5 + Section_3 = 1;
constraint F4 + a6 = 1;
constraint a7 + Section_6 = 1;
constraint F7 + a8 = 1;
constraint a4 + Section_12 + a2 + Section_3 + a6 + Section_6 + a8 + Section_9 = 4;
constraint a3 + Section_9 = 1;

% Reachability formula
constraint (((not ((2 <= F2))) \/ (3 <= F1)) /\ (not (((F2 <= Section_4) /\ (F1 <= Section_9)))));

% Check satisfiability
solve satisfy;
