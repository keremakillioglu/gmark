MATCH (x0)<-[:p4]-()-[:p0]->(x1), (x1)-[:p2]->()<-[:p2]-()-[:p3]->()-[:p5]->(x2), (x2)<-[:p5]-()<-[:p3]-()<-[:p0]-()-[:p4]->(x3) RETURN DISTINCT x0, x1, x2, x3;
