% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: Cells_0_0;
var 0..MAX: Columns_0_0;
var 0..MAX: Regions_0_0;
var 0..MAX: Rows_0_0;
var 0..MAX: Board_0_0_0;

% Additional variables and reduction equations
var 0..MAX: a1;
constraint Columns_0_0 = Cells_0_0;
constraint Regions_0_0 = Cells_0_0;
constraint Rows_0_0 = Cells_0_0;
constraint a1 = Board_0_0_0 + Cells_0_0;
constraint a1 = 1;

% Reachability formula
constraint (not (((Regions_0_0 <= Board_0_0_0) /\ (((3 <= Rows_0_0) /\ (3 <= Board_0_0_0)) \/ (not ((Board_0_0_0 <= Rows_0_0)))))));

% Check satisfiability
solve satisfy;
