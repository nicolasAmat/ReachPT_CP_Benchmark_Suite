% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: RKIP;
var 0..MAX: Raf1Star;
var 0..MAX: Raf1Star_RKIP;
var 0..MAX: RKIPP_RP;
var 0..MAX: RKIPP;
var 0..MAX: RP;
var 0..MAX: ERKPP;
var 0..MAX: Raf1Star_RKIP_ERKPP;
var 0..MAX: ERK;
var 0..MAX: MEKPP;
var 0..MAX: MEKPP_ERK;

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
constraint a1 = ERK + MEKPP_ERK;
constraint a2 = MEKPP + MEKPP_ERK;
constraint a3 = RKIPP + RKIPP_RP;
constraint a4 = RP + RKIPP_RP;
constraint a5 = RKIP + Raf1Star_RKIP;
constraint a6 = Raf1Star + Raf1Star_RKIP;
constraint a2 = 10;
constraint a4 = 10;
constraint a7 = ERKPP + Raf1Star_RKIP_ERKPP;
constraint a8 = a5 + Raf1Star_RKIP_ERKPP;
constraint a9 = a6 + Raf1Star_RKIP_ERKPP;
constraint a9 = 10;
constraint a10 = a7 + a1;
constraint a10 = 10;
constraint a11 = a3 + a8;
constraint a11 = 10;

% Reachability formula
constraint (3 <= RKIPP_RP);

% Check satisfiability
solve satisfy;
