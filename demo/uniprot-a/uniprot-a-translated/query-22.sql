WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = EncodedOn AND s1.label = Interacts  AND s2.label = Interacts  UNION SELECT s0.src, s1.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1 WHERE s0.trg = s1.src AND s0.label = EncodedOn AND s1.label = Interacts  UNION SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = EncodedOn AND s1.label = Interacts  AND s2.label = Interacts )) , c1(src, trg) AS ((SELECT s0.src, s2.trg FROM edge s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = Interacts AND s1.label = Reference  AND s2.label = PublishedIn  UNION SELECT s0.src, s2.trg FROM edge s0, edge s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = Interacts AND s1.label = Reference  AND s2.label = PublishedIn )) , c2(src, trg) AS ((SELECT s0.src, s2.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = PublishedIn AND s1.label = Reference  AND s2.label = Reference )) , c3(src, trg) AS ((SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = PublishedIn AND s1.label = PublishedIn  AND s2.label = PublishedIn  UNION SELECT s0.src, s3.trg FROM (SELECT trg as src, src as trg, label FROM edge) as s0, edge s1, edge s2, edge s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = Reference AND s1.label = Interacts  AND s2.label = Reference  AND s3.label = PublishedIn  UNION SELECT s0.src, s2.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = AuthoredBy AND s1.label = AuthoredBy  AND s2.label = PublishedIn )) SELECT DISTINCT c1.src, c0.src, c2.src FROM c0, c1, c2, c3 WHERE c1.src = c0.trg AND c2.src = c1.trg AND c3.src = c2.trg;
