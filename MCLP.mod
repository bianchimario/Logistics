set Regions; #i
set CandSites; #j

param Coverage {Regions , CandSites}; #[i,j]
param OpeningCost {CandSites}; #j

var Opening {CandSites} binary; #1 se apriamo in j
var CoveredRegion {Regions} binary; #1 se i è coperta


subject to CoveringConstr {i in Regions}: sum {j in CandSites} Coverage[i,j] * Opening[j] >= CoveredRegion[i];

subject to BudgetConstr {i in Regions}: sum {j in CandSites} OpeningCost[j] * Opening[j] <= 1000;

maximize maximalcovering : sum {i in Regions} CoveredRegion[i]; 