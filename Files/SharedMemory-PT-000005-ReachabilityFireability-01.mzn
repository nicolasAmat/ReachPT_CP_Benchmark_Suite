% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: Memory_2;
var 0..MAX: Queue_1;
var 0..MAX: Ext_Bus;
var 0..MAX: Ext_Mem_Acc_1_2;
var 0..MAX: Memory_3;
var 0..MAX: Ext_Mem_Acc_1_3;
var 0..MAX: Memory_4;
var 0..MAX: Ext_Mem_Acc_1_4;
var 0..MAX: Memory_5;
var 0..MAX: Ext_Mem_Acc_1_5;
var 0..MAX: Queue_2;
var 0..MAX: Memory_1;
var 0..MAX: Ext_Mem_Acc_2_1;
var 0..MAX: Ext_Mem_Acc_2_3;
var 0..MAX: Ext_Mem_Acc_2_4;
var 0..MAX: Ext_Mem_Acc_2_5;
var 0..MAX: Queue_3;
var 0..MAX: Ext_Mem_Acc_3_1;
var 0..MAX: Ext_Mem_Acc_3_2;
var 0..MAX: Ext_Mem_Acc_3_4;
var 0..MAX: Ext_Mem_Acc_3_5;
var 0..MAX: Queue_4;
var 0..MAX: Ext_Mem_Acc_4_1;
var 0..MAX: Ext_Mem_Acc_4_2;
var 0..MAX: Ext_Mem_Acc_4_3;
var 0..MAX: Ext_Mem_Acc_4_5;
var 0..MAX: Queue_5;
var 0..MAX: Ext_Mem_Acc_5_1;
var 0..MAX: Ext_Mem_Acc_5_2;
var 0..MAX: Ext_Mem_Acc_5_3;
var 0..MAX: Ext_Mem_Acc_5_4;
var 0..MAX: Active_1;
var 0..MAX: OwnMemAcc_1;
var 0..MAX: Active_2;
var 0..MAX: OwnMemAcc_2;
var 0..MAX: Active_3;
var 0..MAX: OwnMemAcc_3;
var 0..MAX: Active_4;
var 0..MAX: OwnMemAcc_4;
var 0..MAX: Active_5;
var 0..MAX: OwnMemAcc_5;

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
var 0..MAX: a26;
var 0..MAX: a27;
var 0..MAX: a28;
var 0..MAX: a29;
var 0..MAX: a30;
var 0..MAX: a31;
var 0..MAX: a32;
var 0..MAX: a33;
var 0..MAX: a34;
var 0..MAX: a35;
var 0..MAX: a36;
var 0..MAX: a37;
var 0..MAX: a38;
var 0..MAX: a39;
var 0..MAX: a40;
var 0..MAX: a41;
var 0..MAX: a42;
var 0..MAX: a43;
var 0..MAX: a44;
var 0..MAX: a45;
var 0..MAX: a46;
var 0..MAX: a47;
var 0..MAX: a48;
var 0..MAX: a49;
var 0..MAX: a50;
var 0..MAX: a51;
var 0..MAX: a52;
var 0..MAX: a53;
var 0..MAX: a54;
var 0..MAX: a55;
var 0..MAX: a56;
var 0..MAX: a57;
var 0..MAX: a58;
var 0..MAX: a59;
var 0..MAX: a60;
var 0..MAX: a61;
var 0..MAX: a62;
var 0..MAX: a63;
var 0..MAX: a64;
var 0..MAX: a65;
var 0..MAX: a66;
var 0..MAX: a67;
var 0..MAX: a68;
var 0..MAX: a69;
var 0..MAX: a70;
constraint a1 = OwnMemAcc_1 + Active_1;
constraint a2 = Queue_1 + a1;
constraint a3 = OwnMemAcc_2 + Active_2;
constraint a4 = Queue_2 + a3;
constraint a5 = OwnMemAcc_3 + Active_3;
constraint a6 = Queue_3 + a5;
constraint a7 = OwnMemAcc_4 + Active_4;
constraint a8 = Queue_4 + a7;
constraint a9 = OwnMemAcc_5 + Active_5;
constraint a10 = Queue_5 + a9;
constraint a11 = a2 + Ext_Mem_Acc_1_2;
constraint a12 = Ext_Bus + Ext_Mem_Acc_1_2;
constraint a13 = Memory_2 + Ext_Mem_Acc_1_2;
constraint a14 = a11 + Ext_Mem_Acc_1_3;
constraint a15 = a12 + Ext_Mem_Acc_1_3;
constraint a16 = Memory_3 + Ext_Mem_Acc_1_3;
constraint a17 = a14 + Ext_Mem_Acc_1_4;
constraint a18 = a15 + Ext_Mem_Acc_1_4;
constraint a19 = Memory_4 + Ext_Mem_Acc_1_4;
constraint a20 = a17 + Ext_Mem_Acc_1_5;
constraint a21 = a18 + Ext_Mem_Acc_1_5;
constraint a22 = Memory_5 + Ext_Mem_Acc_1_5;
constraint a23 = a4 + Ext_Mem_Acc_2_1;
constraint a24 = a21 + Ext_Mem_Acc_2_1;
constraint a25 = Memory_1 + Ext_Mem_Acc_2_1;
constraint a26 = a23 + Ext_Mem_Acc_2_3;
constraint a27 = a24 + Ext_Mem_Acc_2_3;
constraint a28 = a16 + Ext_Mem_Acc_2_3;
constraint a29 = a26 + Ext_Mem_Acc_2_4;
constraint a30 = a27 + Ext_Mem_Acc_2_4;
constraint a31 = a19 + Ext_Mem_Acc_2_4;
constraint a32 = a29 + Ext_Mem_Acc_2_5;
constraint a33 = a30 + Ext_Mem_Acc_2_5;
constraint a34 = a22 + Ext_Mem_Acc_2_5;
constraint a35 = a6 + Ext_Mem_Acc_3_1;
constraint a36 = a33 + Ext_Mem_Acc_3_1;
constraint a37 = a25 + Ext_Mem_Acc_3_1;
constraint a38 = a35 + Ext_Mem_Acc_3_2;
constraint a39 = a36 + Ext_Mem_Acc_3_2;
constraint a40 = a13 + Ext_Mem_Acc_3_2;
constraint a41 = a38 + Ext_Mem_Acc_3_4;
constraint a42 = a39 + Ext_Mem_Acc_3_4;
constraint a43 = a31 + Ext_Mem_Acc_3_4;
constraint a44 = a41 + Ext_Mem_Acc_3_5;
constraint a45 = a42 + Ext_Mem_Acc_3_5;
constraint a46 = a34 + Ext_Mem_Acc_3_5;
constraint a47 = a8 + Ext_Mem_Acc_4_1;
constraint a48 = a45 + Ext_Mem_Acc_4_1;
constraint a49 = a37 + Ext_Mem_Acc_4_1;
constraint a50 = a47 + Ext_Mem_Acc_4_2;
constraint a51 = a48 + Ext_Mem_Acc_4_2;
constraint a52 = a40 + Ext_Mem_Acc_4_2;
constraint a53 = a50 + Ext_Mem_Acc_4_3;
constraint a54 = a51 + Ext_Mem_Acc_4_3;
constraint a55 = a28 + Ext_Mem_Acc_4_3;
constraint a56 = a53 + Ext_Mem_Acc_4_5;
constraint a57 = a54 + Ext_Mem_Acc_4_5;
constraint a58 = a46 + Ext_Mem_Acc_4_5;
constraint a59 = a10 + Ext_Mem_Acc_5_1;
constraint a60 = a57 + Ext_Mem_Acc_5_1;
constraint a61 = a49 + Ext_Mem_Acc_5_1;
constraint a62 = a59 + Ext_Mem_Acc_5_2;
constraint a63 = a60 + Ext_Mem_Acc_5_2;
constraint a64 = a52 + Ext_Mem_Acc_5_2;
constraint a65 = a62 + Ext_Mem_Acc_5_3;
constraint a66 = a63 + Ext_Mem_Acc_5_3;
constraint a67 = a55 + Ext_Mem_Acc_5_3;
constraint a68 = a65 + Ext_Mem_Acc_5_4;
constraint a69 = a66 + Ext_Mem_Acc_5_4;
constraint a70 = a43 + Ext_Mem_Acc_5_4;
constraint a20 = 1;
constraint a32 = 1;
constraint a44 = 1;
constraint a56 = 1;
constraint a68 = 1;
constraint a69 = 1;
constraint a61 = 1;
constraint a64 = 1;
constraint a67 = 1;
constraint a70 = 1;
constraint a58 = 1;

% Reachability formula
constraint (not (((Active_2 >= 1) \/ (Active_1 >= 1) \/ (Active_4 >= 1) \/ (Active_3 >= 1) \/ (Active_5 >= 1))));

% Check satisfiability
solve satisfy;
