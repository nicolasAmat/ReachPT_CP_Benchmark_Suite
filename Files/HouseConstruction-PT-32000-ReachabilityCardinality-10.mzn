% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p1;
var 0..MAX: p2;
var 0..MAX: p15;
var 0..MAX: p4;
var 0..MAX: p16;
var 0..MAX: p14;
var 0..MAX: p17;
var 0..MAX: p25;
var 0..MAX: p18;
var 0..MAX: p19;
var 0..MAX: p20;
var 0..MAX: p21;
var 0..MAX: p22;
var 0..MAX: p23;
var 0..MAX: p26;
var 0..MAX: p27;
var 0..MAX: p3;
var 0..MAX: p5;
var 0..MAX: p6;
var 0..MAX: p12;
var 0..MAX: p7;
var 0..MAX: p8;
var 0..MAX: p9;
var 0..MAX: p10;
var 0..MAX: p13;
var 0..MAX: p11;

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
constraint p20 = p19;
constraint a1 = p2 + p1;
constraint a2 = p15 + p11;
constraint a3 = p17 + p14;
constraint a4 = p25 + p16;
constraint a5 = p21 + p18;
constraint a6 = p22 + p19;
constraint a7 = p3 + a1;
constraint a8 = a2 + p7;
constraint p12 = p10 + p8;
constraint p13 = p10 + p9;
constraint a5 = a6 + p23;
constraint p27 = p23 + p26;
constraint p4 = p6 + a8;
constraint a9 = a3 + p10;
constraint a10 = p23 + a6;
constraint a11 = p9 + p5;
constraint a12 = a4 + a8;
constraint a13 = a10 + a9;
constraint a14 = p26 + a13;
constraint a11 = p6 + p8;
constraint a12 = a14 + p8;
constraint a15 = p6 + a7;
constraint a16 = a14 + p8;
constraint a17 = a16 + a15;
constraint a17 <= 32000;

% Reachability formula
constraint (not (((not (((2 <= p16) /\ (p16 <= p14)))) \/ ((not ((3 <= p10))) \/ ((p26 <= p25) \/ (3 <= p7))))));

% Check satisfiability
solve satisfy;
