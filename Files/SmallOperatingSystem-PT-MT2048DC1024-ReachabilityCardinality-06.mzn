% Upper bound
int: MAX = 1000000;

% Places from the initial Petri net
var 0..MAX: LoadingMem;
var 0..MAX: DiskControllerUnit;
var 0..MAX: TaskOnDisk;
var 0..MAX: TaskReady;
var 0..MAX: TransferToDisk;
var 0..MAX: FreeMemSegment;
var 0..MAX: CPUUnit;
var 0..MAX: ExecutingTask;
var 0..MAX: TaskSuspended;

% Additional variables and reduction equations
var 0..MAX: a1;
var 0..MAX: a2;
var 0..MAX: a3;
var 0..MAX: a4;
var 0..MAX: a5;
constraint TaskOnDisk = DiskControllerUnit + 1024;
constraint a1 = CPUUnit + ExecutingTask;
constraint a2 = TaskSuspended + ExecutingTask;
constraint a1 = 2048;
constraint a3 = a2 + TaskReady;
constraint a4 = DiskControllerUnit + TransferToDisk;
constraint a5 = a3 + TransferToDisk;
constraint a4 + LoadingMem = 1024;
constraint FreeMemSegment + LoadingMem + a5 = 2048;

% Reachability formula
constraint (not (((3 <= LoadingMem) \/ (3 <= DiskControllerUnit))));

% Check satisfiability
solve satisfy;
