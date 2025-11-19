INSERT INTO Devices (ModelName, Category, ReleaseYear, PriceSegment)
VALUES
('Nova Hear 100', 'In-Ear', 2020, 'Budget'),
('Nova Hear 200', 'In-Ear', 2021, 'Mid'),
('ClearSound Air', 'Over-Ear', 2022, 'Premium'),
('ClearSound Pro', 'Over-Ear', 2023, 'Premium'),
('BasicTone Lite', 'In-Ear', 2019, 'Budget'),
('WaveSense Mini', 'In-Ear', 2021, 'Mid'),
('WaveSense Plus', 'In-Ear', 2023, 'Mid'),
('AudioFlex Pro', 'Over-Ear', 2020, 'Premium'),
('AudioFlex Lite', 'Over-Ear', 2021, 'Mid'),
('QuietBuds', 'In-Ear', 2022, 'Budget');

INSERT INTO Customers (Country, AgeGroup, BuyChannel)
VALUES
('Poland', '18-25', 'Online'),
('Poland', '26-40', 'Retail'),
('Germany', '26-40', 'Online'),
('Germany', '40-60', 'Retail'),
('USA', '18-25', 'Online'),
('USA', '26-40', 'Online'),
('USA', '40-60', 'Retail'),
('France', '26-40', 'Online'),
('France', '40-60', 'Retail'),
('Spain', '18-25', 'Retail'),
('Spain', '26-40', 'Online'),
('Italy', '40-60', 'Online'),
('Italy', '26-40', 'Retail'),
('UK', '26-40', 'Online'),
('UK', '40-60', 'Retail');

INSERT INTO Complaints 
(DeviceId, CustomerId, Category, Severity, ComplaintStatus, ComplaintDate, ResolutionTimeDays, UnderWarranty)
VALUES
(1, 1, 'Battery', 'High', 'Closed', '2024-01-05', 5, 1),
(1, 2, 'Connectivity', 'Medium', 'Open', '2024-02-10', NULL, 1),
(2, 3, 'Sound', 'Low', 'Closed', '2024-01-15', 2, 1),
(2, 4, 'Comfort', 'High', 'Closed', '2024-02-03', 7, 0),
(3, 5, 'Battery', 'Critical', 'Closed', '2024-03-12', 10, 1),
(4, 6, 'Connectivity', 'High', 'Open', '2024-03-20', NULL, 1),
(5, 7, 'Sound', 'Medium', 'Closed', '2024-04-11', 3, 0),
(6, 8, 'Comfort', 'Low', 'Closed', '2024-05-01', 1, 1),
(7, 9, 'Battery', 'High', 'Open', '2024-05-18', NULL, 1),
(8, 10, 'Battery', 'Critical', 'Closed', '2024-06-02', 12, 0),

(9, 11, 'Connectivity', 'Medium', 'Closed', '2024-06-15', 4, 1),
(10, 12, 'Sound', 'Low', 'Closed', '2024-07-03', 2, 1),
(1, 13, 'Comfort', 'High', 'Open', '2024-07-14', NULL, 1),
(2, 14, 'Connectivity', 'Critical', 'Closed', '2024-08-01', 9, 1),
(3, 15, 'Battery', 'Low', 'Closed', '2024-08-10', 3, 0),

(4, 1, 'Battery', 'Medium', 'Closed', '2024-09-01', 6, 1),
(5, 2, 'Connectivity', 'High', 'Closed', '2024-09-05', 7, 1),
(6, 3, 'Comfort', 'Critical', 'Closed', '2024-09-09', 11, 0),
(7, 4, 'Sound', 'Low', 'Closed', '2024-09-14', 2, 1),
(8, 5, 'Battery', 'Critical', 'Open', '2024-09-20', NULL, 1),

(9, 6, 'Battery', 'Medium', 'Closed', '2024-10-01', 4, 1),
(10, 7, 'Comfort', 'High', 'Closed', '2024-10-04', 8, 0),
(1, 8, 'Connectivity', 'Low', 'Closed', '2024-10-10', 3, 1),
(2, 9, 'Sound', 'Critical', 'Closed', '2024-10-11', 12, 1),
(3, 10, 'Battery', 'Medium', 'Open', '2024-10-12', NULL, 1),

(4, 11, 'Sound', 'High', 'Closed', '2024-10-20', 6, 1),
(5, 12, 'Comfort', 'Low', 'Closed', '2024-10-22', 1, 1),
(6, 13, 'Battery', 'High', 'Closed', '2024-10-25', 5, 0),
(7, 14, 'Connectivity', 'Medium', 'Closed', '2024-10-28', 4, 1),
(8, 15, 'Sound', 'Low', 'Open', '2024-10-30', NULL, 1),

(9, 1, 'Battery', 'Critical', 'Closed', '2024-11-01', 13, 0),
(10, 2, 'Connectivity', 'High', 'Closed', '2024-11-03', 7, 1),
(1, 3, 'Sound', 'Medium', 'Closed', '2024-11-04', 3, 1),
(2, 4, 'Comfort', 'Medium', 'Open', '2024-11-05', NULL, 1),
(3, 5, 'Battery', 'High', 'Closed', '2024-11-06', 8, 1),

(4, 6, 'Connectivity', 'Low', 'Closed', '2024-11-07', 2, 1),
(5, 7, 'Battery', 'Medium', 'Closed', '2024-11-08', 5, 0),
(6, 8, 'Sound', 'Critical', 'Closed', '2024-11-09', 10, 1),
(7, 9, 'Comfort', 'Low', 'Closed', '2024-11-10', 1, 1),
(8, 10, 'Battery', 'High', 'Open', '2024-11-11', NULL, 1);