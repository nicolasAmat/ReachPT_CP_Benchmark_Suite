% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: p10;
var 0..MAX: p2;
var 0..MAX: p5;
var 0..MAX: p100;
var 0..MAX: p20;
var 0..MAX: p25;
var 0..MAX: p4;
var 0..MAX: p50;
var 0..MAX: p12;
var 0..MAX: p3;
var 0..MAX: p6;
var 0..MAX: p14;
var 0..MAX: p7;
var 0..MAX: p15;
var 0..MAX: p16;
var 0..MAX: p8;
var 0..MAX: p18;
var 0..MAX: p9;
var 0..MAX: p21;
var 0..MAX: p11;
var 0..MAX: p22;
var 0..MAX: p24;
var 0..MAX: p13;
var 0..MAX: p26;
var 0..MAX: p27;
var 0..MAX: p28;
var 0..MAX: p30;
var 0..MAX: p32;
var 0..MAX: p33;
var 0..MAX: p17;
var 0..MAX: p34;
var 0..MAX: p35;
var 0..MAX: p36;
var 0..MAX: p19;
var 0..MAX: p38;
var 0..MAX: p39;
var 0..MAX: p40;
var 0..MAX: p42;
var 0..MAX: p44;
var 0..MAX: p45;
var 0..MAX: p46;
var 0..MAX: p23;
var 0..MAX: p48;
var 0..MAX: p49;
var 0..MAX: p51;
var 0..MAX: p52;
var 0..MAX: p54;
var 0..MAX: p55;
var 0..MAX: p56;
var 0..MAX: p57;
var 0..MAX: p58;
var 0..MAX: p29;
var 0..MAX: p60;
var 0..MAX: p62;
var 0..MAX: p31;
var 0..MAX: p63;
var 0..MAX: p64;
var 0..MAX: p65;
var 0..MAX: p66;
var 0..MAX: p68;
var 0..MAX: p69;
var 0..MAX: p70;
var 0..MAX: p72;
var 0..MAX: p74;
var 0..MAX: p37;
var 0..MAX: p75;
var 0..MAX: p76;
var 0..MAX: p77;
var 0..MAX: p78;
var 0..MAX: p80;
var 0..MAX: p81;
var 0..MAX: p82;
var 0..MAX: p41;
var 0..MAX: p84;
var 0..MAX: p85;
var 0..MAX: p86;
var 0..MAX: p43;
var 0..MAX: p87;
var 0..MAX: p88;
var 0..MAX: p90;
var 0..MAX: p91;
var 0..MAX: p92;
var 0..MAX: p93;
var 0..MAX: p94;
var 0..MAX: p47;
var 0..MAX: p95;
var 0..MAX: p96;
var 0..MAX: p98;
var 0..MAX: p99;
var 0..MAX: p53;
var 0..MAX: p59;
var 0..MAX: p61;
var 0..MAX: p67;
var 0..MAX: p71;
var 0..MAX: p73;
var 0..MAX: p79;
var 0..MAX: p83;
var 0..MAX: p89;
var 0..MAX: p97;

% Additional variables and reduction equations
constraint p11 = 1;
constraint p13 = 1;
constraint p17 = 1;
constraint p19 = 1;
constraint p2 = 1;
constraint p23 = 1;
constraint p29 = 1;
constraint p3 = 1;
constraint p31 = 1;
constraint p37 = 1;
constraint p41 = 1;
constraint p43 = 1;
constraint p47 = 1;
constraint p5 = 1;
constraint p53 = 1;
constraint p59 = 1;
constraint p61 = 1;
constraint p67 = 1;
constraint p7 = 1;
constraint p71 = 1;
constraint p73 = 1;
constraint p79 = 1;
constraint p83 = 1;
constraint p89 = 1;
constraint p97 = 1;
constraint p10 <= 1;
constraint p100 <= 1;
constraint p12 <= 1;
constraint p14 <= 1;
constraint p15 <= 1;
constraint p16 <= 1;
constraint p18 <= 1;
constraint p20 <= 1;
constraint p21 <= 1;
constraint p22 <= 1;
constraint p24 <= 1;
constraint p25 <= 1;
constraint p26 <= 1;
constraint p27 <= 1;
constraint p28 <= 1;
constraint p30 <= 1;
constraint p32 <= 1;
constraint p33 <= 1;
constraint p34 <= 1;
constraint p35 <= 1;
constraint p36 <= 1;
constraint p38 <= 1;
constraint p39 <= 1;
constraint p4 <= 1;
constraint p40 <= 1;
constraint p42 <= 1;
constraint p44 <= 1;
constraint p45 <= 1;
constraint p46 <= 1;
constraint p48 <= 1;
constraint p49 <= 1;
constraint p50 <= 1;
constraint p51 <= 1;
constraint p52 <= 1;
constraint p54 <= 1;
constraint p55 <= 1;
constraint p56 <= 1;
constraint p57 <= 1;
constraint p58 <= 1;
constraint p6 <= 1;
constraint p60 <= 1;
constraint p62 <= 1;
constraint p63 <= 1;
constraint p64 <= 1;
constraint p65 <= 1;
constraint p66 <= 1;
constraint p68 <= 1;
constraint p69 <= 1;
constraint p70 <= 1;
constraint p72 <= 1;
constraint p74 <= 1;
constraint p75 <= 1;
constraint p76 <= 1;
constraint p77 <= 1;
constraint p78 <= 1;
constraint p8 <= 1;
constraint p80 <= 1;
constraint p81 <= 1;
constraint p82 <= 1;
constraint p84 <= 1;
constraint p85 <= 1;
constraint p86 <= 1;
constraint p87 <= 1;
constraint p88 <= 1;
constraint p9 <= 1;
constraint p90 <= 1;
constraint p91 <= 1;
constraint p92 <= 1;
constraint p93 <= 1;
constraint p94 <= 1;
constraint p95 <= 1;
constraint p96 <= 1;
constraint p98 <= 1;
constraint p99 <= 1;

% Reachability formula
constraint (not ((((p49 >= 1) /\ (p98 >= 1)) \/ ((((p4 >= 1) /\ (p64 >= 1)) /\ (((p28 >= 1) /\ (p7 >= 1)) \/ ((p36 >= 1) /\ (p72 >= 1)))) \/ (not ((not (((p3 >= 1) /\ (p60 >= 1))))))))));

% Check satisfiability
solve satisfy;
