MATCH (x0)-[:pisLocatedIn]->()-[:pisPartOf]->()<-[:pisPartOf]-(x1), (x0)<-[:pknows]-()-[:pspeaks]->()<-[:pname]-(x2), (x0)-[:pisLocatedIn]->()-[:pisPartOf]->()<-[:pisPartOf]-(x3), (x0)<-[:pknows]-()-[:pknows]->()-[:pisLocatedIn]->(x4) RETURN DISTINCT x1, x0, x2;