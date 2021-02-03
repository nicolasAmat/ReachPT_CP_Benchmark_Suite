% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: Cells_0_0;
var 0..MAX: Columns_0_0;
var 0..MAX: Rows_0_0;
var 0..MAX: Board_0_0_0;

% Additional variables and reduction equations
var 0..MAX: a1;
constraint Columns_0_0 = Cells_0_0;
constraint Rows_0_0 = Cells_0_0;
constraint a1 = Board_0_0_0 + Cells_0_0;
constraint a1 = 1;

% Reachability formula
constraint (((Cells_0_0 >= 1) /\ (Columns_0_0 >= 1) /\ (Rows_0_0 >= 1)) /\ (((Cells_0_0 >= 1) /\ (Columns_0_0 >= 1) /\ (Rows_0_0 >= 1)) \/ (not (((Cells_0_0 >= 1) /\ (Columns_0_0 >= 1) /\ (Rows_0_0 >= 1))))));

% Check satisfiability
solve satisfy;
