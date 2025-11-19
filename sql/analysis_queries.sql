-- Reclamation amount per model
SELECT d.ModelName,
       COUNT(*) AS TotalComplaints
FROM Complaints c
JOIN Devices d ON c.DeviceId = d.DeviceId
GROUP BY d.ModelName
ORDER BY TotalComplaints DESC;

-- AVG resolution time
SELECT cu.Country,
       AVG(CAST(c.ResolutionTimeDays AS FLOAT)) AS AvgResolutionDays
FROM Complaints c
JOIN Customers cu ON c.CustomerId = cu.CustomerId
WHERE c.ComplaintStatus = 'Closed'
GROUP BY cu.Country
ORDER BY AvgResolutionDays DESC;

-- Category and Severity
SELECT c.Category,
       c.Severity,
       COUNT(*) AS CountComplaints
FROM Complaints c
GROUP BY c.Category, c.Severity
ORDER BY c.Category, c.Severity;

-- Reclamations percent 
SELECT
    CASE WHEN UnderWarranty = 1 THEN 'Under warranty' ELSE 'Out of warranty' END AS WarrantyStatus,
    COUNT(*) AS CountComplaints
FROM Complaints
GROUP BY UnderWarranty;

-- Closed model to AvgResolutionDays
SELECT TOP 3 d.ModelName,
       AVG(CAST(c.ResolutionTimeDays AS FLOAT)) AS AvgResolutionDays,
       COUNT(*) AS TotalComplaints
FROM Complaints c
JOIN Devices d ON c.DeviceId = d.DeviceId
WHERE c.ComplaintStatus = 'Closed'
GROUP BY d.ModelName
ORDER BY AvgResolutionDays DESC;

-- Complaints per country & model
SELECT cu.Country,
       d.ModelName,
       COUNT(*) AS TotalComplaints
FROM Complaints c
JOIN Customers cu ON c.CustomerId = cu.CustomerId
JOIN Devices d ON c.DeviceId = d.DeviceId
GROUP BY cu.Country, d.ModelName
ORDER BY cu.Country, TotalComplaints DESC;