-- CleanSetup.sql: Create database schema with correct Orders table

USE ClothesCorrectB;

-- Users table
CREATE TABLE IF NOT EXISTS Users (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(100),
  Email VARCHAR(100) UNIQUE,
  PasswordHash VARCHAR(255) NOT NULL,
  Phone VARCHAR(20),
  IsActive BOOLEAN DEFAULT TRUE,
  IsAdmin BOOLEAN DEFAULT FALSE,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt DATETIME NULL
);

-- Products table
CREATE TABLE IF NOT EXISTS Products (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(200) NOT NULL,
  Price DECIMAL(18,2) NOT NULL,
  Mrp DECIMAL(18,2) NULL,
  Color VARCHAR(50) NULL,
  Size VARCHAR(20) NULL,
  Category VARCHAR(50) NOT NULL,
  Gender VARCHAR(20) NOT NULL,
  KidType VARCHAR(20) NULL,
  Brand VARCHAR(50) NOT NULL,
  Type VARCHAR(50) NULL,
  Discount INT NOT NULL DEFAULT 0,
  Image VARCHAR(500) NOT NULL,
  Description TEXT NULL,
  Rating DOUBLE NULL,
  ReviewCount VARCHAR(20) NULL,
  VerifiedBuyers BOOLEAN NOT NULL DEFAULT FALSE,
  ReturnPolicy VARCHAR(100) NULL,
  CodAvailable BOOLEAN NOT NULL DEFAULT FALSE,
  Sizes VARCHAR(100) NULL,
  FitType VARCHAR(50) NULL,
  SKU VARCHAR(50) NULL,
  StockQuantity INT NOT NULL DEFAULT 10,
  IsActive BOOLEAN NOT NULL DEFAULT TRUE,
  ShowOnHomePage BOOLEAN NOT NULL DEFAULT FALSE,
  ShowInShopPage BOOLEAN NOT NULL DEFAULT TRUE,
  IsTrending BOOLEAN NOT NULL DEFAULT FALSE,
  IsNewArrival BOOLEAN NOT NULL DEFAULT FALSE,
  IsBestSeller BOOLEAN NOT NULL DEFAULT FALSE,
  IsDraft BOOLEAN NOT NULL DEFAULT FALSE,
  CreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt DATETIME NULL
);

-- CartItems table
CREATE TABLE IF NOT EXISTS CartItems (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  UserId INT,
  ProductId INT,
  Quantity INT DEFAULT 1,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt DATETIME NULL,
  FOREIGN KEY (UserId) REFERENCES Users(Id) ON DELETE CASCADE,
  FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE RESTRICT
);

-- Orders table with CreatedAt column
CREATE TABLE IF NOT EXISTS Orders (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  UserId INT NOT NULL,
  OrderNumber VARCHAR(50) UNIQUE NOT NULL,
  TotalAmount DECIMAL(18,2) NOT NULL,
  DiscountAmount DECIMAL(18,2) DEFAULT 0,
  Status VARCHAR(50) DEFAULT 'Pending',
  PaymentStatus VARCHAR(50) DEFAULT 'Pending',
  ShippingAddress TEXT,
  PaymentMethod VARCHAR(50),
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  UpdatedAt DATETIME NULL,
  FOREIGN KEY (UserId) REFERENCES Users(Id) ON DELETE RESTRICT
);

-- OrderItems table
CREATE TABLE IF NOT EXISTS OrderItems (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  OrderId INT NOT NULL,
  ProductId INT NOT NULL,
  Quantity INT NOT NULL,
  UnitPrice DECIMAL(18,2) NOT NULL,
  TotalPrice DECIMAL(18,2) NOT NULL,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (OrderId) REFERENCES Orders(Id) ON DELETE CASCADE,
  FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE RESTRICT
);

-- Categories table
CREATE TABLE IF NOT EXISTS Categories (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) UNIQUE NOT NULL,
  Description TEXT,
  IsActive BOOLEAN DEFAULT TRUE,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Brands table
CREATE TABLE IF NOT EXISTS Brands (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) UNIQUE NOT NULL,
  Logo VARCHAR(500),
  Description TEXT,
  IsActive BOOLEAN DEFAULT TRUE,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Genders table
CREATE TABLE IF NOT EXISTS Genders (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(20) NOT NULL,
  IsActive BOOLEAN DEFAULT TRUE,
  CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Seed basic data
INSERT INTO Users (Id, Name, Email, PasswordHash, IsAdmin, IsActive) VALUES 
(3, 'Test Admin', 'admin@clothescorrect.com', 'DemoHash123', 0, 1) ON DUPLICATE KEY UPDATE Id=Id;

INSERT INTO Products (Id, Name, Price, Category, Gender, Brand, Image, StockQuantity) VALUES
(367, 'Test Product', 1550, 'Tshirts', 'Men', 'Nike', '/assets/test.png', 100) ON DUPLICATE KEY UPDATE Id=Id;

INSERT INTO Categories (Name) VALUES 
('Jeans'), ('Tshirts'), ('Dresses'), ('Tops'), ('Shirts'), ('Kurtas') ON DUPLICATE KEY UPDATE Name=Name;

INSERT INTO Brands (Name) VALUES 
('Nike'), ('Levis'), ('Puma'), ('Roadster'), ('Calvin Klein'), ('Gucci'), ('STREET 9'), ('Unknown') ON DUPLICATE KEY UPDATE Name=Name;

INSERT INTO Genders (Name) VALUES 
('Men'), ('Women'), ('Kids'), ('Boy'), ('Girl') ON DUPLICATE KEY UPDATE Name=Name;
