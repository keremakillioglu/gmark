MATCH (x0)<-[:pOccursIn]-()-[:pReference]->()<-[:pReference]-()-[:pOccursIn]->(x1), (x0)<-[:pOccursIn]-()-[:pOccursIn]->(x2), (x1)<-[:pOccursIn]-()-[:pEncodedOn]->()<-[:pEncodedOn]-()-[:pOccursIn]->(x3) RETURN DISTINCT x1, x0, x2;
