-- first query
SELECT *
FROM owners
FULL OUTER JOIN vehicles
	ON vehicles.owner_id = owners.id;	

-- second query
SELECT first_name, last_name, 
COUNT(owner_id) FROM owners o
JOIN vehicles v on o.id = v.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name;    