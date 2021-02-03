% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: cAMP__1_1_;
var 0..MAX: cAMP__1_2_;
var 0..MAX: cAMP__2_1_;
var 0..MAX: cAMP__2_2_;
var 0..MAX: cAMP__1_3_;
var 0..MAX: cAMP__2_3_;
var 0..MAX: cAMP__1_4_;
var 0..MAX: cAMP__2_4_;
var 0..MAX: cAMP__1_5_;
var 0..MAX: cAMP__2_5_;
var 0..MAX: cAMP__3_1_;
var 0..MAX: cAMP__3_2_;
var 0..MAX: cAMP__3_3_;
var 0..MAX: cAMP__3_4_;
var 0..MAX: cAMP__3_5_;
var 0..MAX: cAMP__4_1_;
var 0..MAX: cAMP__4_2_;
var 0..MAX: cAMP__4_3_;
var 0..MAX: cAMP__4_4_;
var 0..MAX: cAMP__4_5_;
var 0..MAX: cAMP__5_1_;
var 0..MAX: cAMP__5_2_;
var 0..MAX: cAMP__5_3_;
var 0..MAX: cAMP__5_4_;
var 0..MAX: cAMP__5_5_;

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
constraint a1 = cAMP__1_1_ + cAMP__1_2_;
constraint a2 = cAMP__1_3_ + a1;
constraint a3 = cAMP__1_4_ + cAMP__1_5_;
constraint a4 = cAMP__2_1_ + a2;
constraint a5 = cAMP__2_2_ + a4;
constraint a6 = cAMP__2_3_ + a5;
constraint a7 = cAMP__2_4_ + a3;
constraint a8 = cAMP__2_5_ + a7;
constraint a9 = cAMP__3_1_ + cAMP__3_2_;
constraint a10 = cAMP__3_3_ + a9;
constraint a11 = cAMP__3_4_ + cAMP__3_5_;
constraint a12 = cAMP__4_1_ + a10;
constraint a13 = cAMP__4_2_ + a12;
constraint a14 = cAMP__4_3_ + a13;
constraint a15 = cAMP__4_4_ + a11;
constraint a16 = cAMP__4_5_ + a15;
constraint a17 = cAMP__5_1_ + cAMP__5_2_;
constraint a18 = cAMP__5_3_ + a17;
constraint a19 = cAMP__5_4_ + cAMP__5_5_;
constraint a20 = a6 + a8;
constraint a21 = a14 + a20;
constraint a22 = a16 + a21;
constraint a23 = a18 + a19;
constraint a24 = a23 + a22;
constraint a24 = 350;

% Reachability formula
constraint ((((cAMP__5_5_ <= cAMP__1_5_) \/ (3 <= cAMP__1_5_)) \/ ((3 <= cAMP__3_4_) \/ (cAMP__5_1_ <= cAMP__2_3_))) /\ (((1 <= cAMP__3_2_) \/ (1 <= cAMP__4_3_)) /\ (2 <= cAMP__1_2_)));

% Check satisfiability
solve satisfy;
