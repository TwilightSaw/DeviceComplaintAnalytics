CREATE TABLE Devices (
    DeviceId INT PRIMARY KEY IDENTITY(1,1),
    ModelName VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    ReleaseYear INT NOT NULL,
    PriceSegment VARCHAR(20) NOT NULL
);

CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    Country VARCHAR(50) NOT NULL,
    AgeGroup VARCHAR(50) NOT NULL,
    BuyChannel VARCHAR(50) NOT NULL,
);

CREATE TABLE Complaints (
    ComplaintId INT PRIMARY KEY IDENTITY(1,1),
    DeviceId INT NOT NULL,
    CustomerId INT NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Severity VARCHAR(20) NOT NULL,
    ComplaintStatus VARCHAR(20) NOT NULL,
    ComplaintDate DATE NOT NULL,
    ResolutionTimeDays INT NULL,
    UnderWarranty BIT NOT NULL,

    FOREIGN KEY (DeviceId) REFERENCES Devices(DeviceId),
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);