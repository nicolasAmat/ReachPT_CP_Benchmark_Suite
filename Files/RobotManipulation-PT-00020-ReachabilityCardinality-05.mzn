% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: access;
var 0..MAX: p_rdy;
var 0..MAX: p_sc;
var 0..MAX: move;
var 0..MAX: p_m;
var 0..MAX: moved;
var 0..MAX: p_rel;
var 0..MAX: off;
var 0..MAX: p_i1;
var 0..MAX: initialize;
var 0..MAX: p_i2;
var 0..MAX: initialized;
var 0..MAX: r_active;
var 0..MAX: r_moving;
var 0..MAX: r_stopped;

% Additional variables and reduction equations
var 0..MAX: aa1;
var 0..MAX: aa2;
var 0..MAX: aa3;
var 0..MAX: aa4;
var 0..MAX: aa5;
var 0..MAX: aa6;
var 0..MAX: aa7;
var 0..MAX: aa8;
var 0..MAX: aa9;
constraint access = initialized + off + p_rdy + r_stopped;
constraint p_i2 = initialize + initialized;
constraint p_m = move + moved + r_moving;
constraint r_active = initialized + move + moved + off + p_rdy + p_rel + p_sc;
constraint aa1 = r_moving + move;
constraint aa2 = p_rel + moved;
constraint aa3 = initialize + p_i1;
constraint aa4 = p_sc + p_rdy;
constraint aa5 = aa2 + aa1;
constraint aa6 = aa5 + aa4;
constraint aa7 = aa6 + initialized;
constraint aa3 = off + r_stopped + 1;
constraint aa8 = off + aa7;
constraint aa9 = aa8 + r_stopped;
constraint aa9 = 40;

% Reachability formula
constraint ((((p_i2 <= access) /\ (r_active <= access)) /\ ((p_i1 <= initialized) /\ (1 <= p_rdy))) /\ (not ((not ((3 <= r_moving))))));

% Check satisfiability
solve satisfy;
