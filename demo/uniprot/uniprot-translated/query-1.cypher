MATCH (x0)<-[:p4]-()-[:p3]->()-[:p5]->(x1), (x1)<-[:p5]-()<-[:p3]-()<-[:p0]-()-[:p2]->(x2), (x0)<-[:p4]-()-[:p0]->()-[:p0]->()-[:p4]->(x3), (x2)<-[:p4]-()-[:p0]->()-[:p0]->()-[:p4]->(x4) RETURN DISTINCT x2, x1, x3, x0;
