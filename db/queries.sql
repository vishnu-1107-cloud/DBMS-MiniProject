SELECT * FROM v_open_issue_queue WHERE status='OPEN' ORDER BY priority DESC,created_at;
SELECT c.name,COUNT(*) n,AVG(i.priority) avg_priority FROM issue i JOIN issue_category c USING(category_id) GROUP BY c.name HAVING COUNT(*)>=1 ORDER BY n DESC;
SELECT room_code FROM room r WHERE (SELECT count(*) FROM issue i WHERE i.room_id=r.room_id)>(SELECT avg(n) FROM (SELECT count(*) n FROM issue GROUP BY room_id) q);
SELECT resolve_issue(1,2,'Replaced cable',25);
-- Mongo: db.issue_activity.aggregate([{$group:{_id:'$metadata.status',count:{$sum:1}}},{$sort:{count:-1}}])
