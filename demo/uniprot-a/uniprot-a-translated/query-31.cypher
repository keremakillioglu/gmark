MATCH (x0)<-[:pAuthoredBy]-()<-[:pReference]-()-[:pHasKeyword]->(x1), (x1)<-[:pHasKeyword]-()<-[:pInteracts]-()-[:pReference]->(x2), (x2)<-[:pReference]-()-[:pInteracts]->()-[:pOccursIn]->(x3) RETURN DISTINCT x0;