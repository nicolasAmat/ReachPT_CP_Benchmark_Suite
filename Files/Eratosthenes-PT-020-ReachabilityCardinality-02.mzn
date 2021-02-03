% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p10;
var 0..MAX: p2;
var 0..MAX: p5;
var 0..MAX: p12;
var 0..MAX: p3;
var 0..MAX: p4;
var 0..MAX: p6;
var 0..MAX: p14;
var 0..MAX: p7;
var 0..MAX: p15;
var 0..MAX: p16;
var 0..MAX: p8;
var 0..MAX: p18;
var 0..MAX: p9;
var 0..MAX: p20;
var 0..MAX: p11;
var 0..MAX: p13;
var 0..MAX: p17;
var 0..MAX: p19;

% Additional variables and reduction equations
constraint p11 = 1;
constraint p13 = 1;
constraint p17 = 1;
constraint p19 = 1;
constraint p2 = 1;
constraint p3 = 1;
constraint p5 = 1;
constraint p7 = 1;
constraint p10 <= 1;
constraint p12 <= 1;
constraint p14 <= 1;
constraint p15 <= 1;
constraint p16 <= 1;
constraint p18 <= 1;
constraint p20 <= 1;
constraint p4 <= 1;
constraint p6 <= 1;
constraint p8 <= 1;
constraint p9 <= 1;

% Reachability formula
constraint (not ((1 <= p7)));

% Check satisfiability
solve satisfy;
