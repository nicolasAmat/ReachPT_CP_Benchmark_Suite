% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: Raf;
var 0..MAX: RasGTP;
var 0..MAX: Raf_RasGTP;
var 0..MAX: MEKP;
var 0..MAX: RafP;
var 0..MAX: MEKP_RafP;
var 0..MAX: MEKPP;
var 0..MAX: Phase2;
var 0..MAX: MEKPP_Phase2;
var 0..MAX: MEKP_Phase2;
var 0..MAX: MEK;
var 0..MAX: ERK;
var 0..MAX: ERK_MEKPP;
var 0..MAX: ERKP;
var 0..MAX: ERKP_MEKPP;
var 0..MAX: ERKPP;
var 0..MAX: Phase3;
var 0..MAX: ERKPP_Phase3;
var 0..MAX: ERKP_Phase3;
var 0..MAX: Phase1;
var 0..MAX: RafP_Phase1;
var 0..MAX: MEK_RafP;

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
constraint a1 = ERKPP + ERKPP_Phase3;
constraint a2 = Phase3 + ERKPP_Phase3;
constraint a3 = ERKP + ERKP_MEKPP;
constraint a4 = MEKPP + ERKP_MEKPP;
constraint a5 = a3 + ERKP_Phase3;
constraint a6 = a2 + ERKP_Phase3;
constraint a7 = ERK + ERK_MEKPP;
constraint a8 = a4 + ERK_MEKPP;
constraint a9 = a8 + MEKPP_Phase2;
constraint a10 = Phase2 + MEKPP_Phase2;
constraint a11 = MEKP + MEKP_Phase2;
constraint a12 = a10 + MEKP_Phase2;
constraint a13 = a11 + MEKP_RafP;
constraint a14 = RafP + MEKP_RafP;
constraint a15 = MEK + MEK_RafP;
constraint a16 = a14 + MEK_RafP;
constraint a17 = Phase1 + RafP_Phase1;
constraint a18 = a16 + RafP_Phase1;
constraint a19 = Raf + Raf_RasGTP;
constraint a20 = RasGTP + Raf_RasGTP;
constraint a17 = 1920;
constraint a12 = 1280;
constraint a6 = 1920;
constraint a20 = 640;
constraint a21 = a19 + a18;
constraint a21 = 2560;
constraint a22 = a15 + a13;
constraint a23 = a9 + a22;
constraint a23 = 1280;
constraint a24 = a1 + a5;
constraint a25 = a7 + a24;
constraint a25 = 1920;

% Reachability formula
constraint (not (((((((Raf >= 1) /\ (RasGTP >= 1)) \/ ((MEKP >= 1) /\ (RafP >= 1))) \/ ((ERKP >= 1) /\ (MEKPP >= 1))) \/ ((not (((MEK >= 1) /\ (RafP >= 1)))) /\ ((ERKP_MEKPP >= 1) /\ ((MEKPP >= 1) /\ (Phase2 >= 1))))) \/ (RafP_Phase1 >= 1))));

% Check satisfiability
solve satisfy;
