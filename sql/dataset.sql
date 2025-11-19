SELECT
    c.ComplaintId,
    c.ComplaintDate,
    c.Category AS ComplaintCategory,
    c.Severity,
    c.ComplaintStatus,
    c.ResolutionTimeDays,
    c.UnderWarranty,

    d.DeviceId,
    d.ModelName,
    d.Category AS DeviceCategory,
    d.ReleaseYear,
    d.PriceSegment,

    cu.CustomerId,
    cu.Country,
    cu.AgeGroup,
    cu.BuyChannel

FROM Complaints c
JOIN Devices d ON c.DeviceId = d.DeviceId
JOIN Customers cu ON c.CustomerId = cu.CustomerId;