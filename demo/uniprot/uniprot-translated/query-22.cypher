MATCH (x0)<-[:p2]-()-[:p3]->()-[:p6]->(x1), (x0)<-[:p2]-()-[:p3]->()-[:p6]->(x2), (x0)<-[:p2]-()-[:p3]->()-[:p6]->(x3), (x0)<-[:p2]-()-[:p0]->()-[:p3]->()-[:p6]->(x4) RETURN DISTINCT x3, x2, x0, x1;
