SELECT UNIQUE * FROM employee e
LEFT JOIN EmployeeTerritory et on e.employeeID = et.employeeID
LEFT JOIN Territory t on et.territoryID = t.territoryID
WHERE t.regionID = 1 or t.regionID is NULL;