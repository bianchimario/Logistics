#SET COVERING LOCATION PROBLEM

set Regions; #i
set CandSites; #j

param Coverage {Regions , CandSites}; #[i,j]
param OpeningCost {CandSites}; #j

var Opening {CandSites} binary; #1 se apriamo in j

minimize Total_cost : sum {j in CandSites} Opening[j] * OpeningCost[j]; 

subject to CoveringConstr {i in Regions }: sum {j in CandSites} Coverage[ i,j ] * Opening[j] >=1;