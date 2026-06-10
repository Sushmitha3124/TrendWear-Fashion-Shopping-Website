# Clothes Correct B - Backend

This is the .NET 8 (C#) backend API for the Clothes Correct B e-commerce application.

## Project Structure

```
backend/
├── ClothesCorrectB.sln                  # Solution file
├── ClothesCorrectB.Core/                 # Core entities
│   ├── ClothesCorrectB.Core.csproj
│   └── Entities/
│       ├── User.cs
│       ├── Product.cs
│       ├── CartItem.cs
│       ├── Order.cs
│       └── OrderItem.cs
├── ClothesCorrectB.Infrastructure/      # Data access layer
│   ├── ClothesCorrectB.Infrastructure.csproj
│   └── Data/
│       └── ApplicationDbContext.cs
├── ClothesCorrectB.Api/                  # Web API
│   ├── ClothesCorrectB.Api.csproj
│   ├── Controllers/
│   │   ├── AuthController.cs
│   │   ├── ProductsController.cs
│   │   ├── CartController.cs
│   │   └── OrdersController.cs
│   ├── DTOs/
│   │   ├── AuthDtos.cs
│   │   ├── ProductDto.cs
│   │   ├── CartDtos.cs
│   │   └── OrderDtos.cs
│   ├── Program.cs
│   ├── SeedData.cs
│   ├── appsettings.json
│   └── README.md
└── ClothesCorrectB.Database.sql          # MySQL database script
```

## Prerequisites

- .NET 8 SDK
- MySQL Server (or MySQL Workbench)
- Visual Studio 2022 or VS Code

## Setup Instructions

### 1. MySQL Database Setup

Option A: Using MySQL Workbench
1. Open MySQL Workbench
2. Run the `ClothesCorrectB.Database.sql` script
3. This will create the database and tables

Option B: Using Command Line
```
bash
mysql -u root -p < ClothesCorrectB.Database.sql
```

### 2. Configure Connection String

Edit `ClothesCorrectB.Api/appsettings.json` to update the MySQL connection string:

```
json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=localhost;Database=ClothesCorrectB;User=root;Password=your_password;"
  }
}
```

### 3. Build and Run

```
bash
cd backend
dotnet restore
dotnet build
dotnet run
```

The API will be available at `https://localhost:7000` (or `http://localhost:5000`)

### 4. API Endpoints

#### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login with email/phone and password
- `POST /api/auth/otp/send` - Send OTP for login

#### Products
- `GET /api/products` - Get all products
- `GET /api/products/{id}` - Get product by ID
- `GET /api/products/category/{category}` - Get products by category
- `GET /api/products/brand/{brand}` - Get products by brand

#### Cart (Requires Authentication)
- `GET /api/cart` - Get user's cart
- `POST /api/cart` - Add item to cart
- `PUT /api/cart/{id}` - Update cart item quantity
- `DELETE /api/cart/{id}` - Remove item from cart
- `DELETE /api/cart` - Clear cart

#### Orders (Requires Authentication)
- `GET /api/orders` - Get user's orders
- `GET /api/orders/{id}` - Get order by ID
- `POST /api/orders` - Place new order

## Frontend Integration

Update the frontend API base URL in `frontend/src/services/api.js`:

```
javascript
const API_BASE_URL = 'http://localhost:7000/api';
```

## JWT Configuration

The JWT token settings can be configured in `appsettings.json`:

```
json
{
  "Jwt": {
    "Key": "YourSuperSecretKeyForJwtTokenGeneration2024!",
    "Issuer": "ClothesCorrectB",
    "Audience": "ClothesCorrectB"
  }
}
```

## Features

- ✅ User Registration & Login
- ✅ JWT Authentication
- ✅ OTP Login Support
- ✅ Products API with filtering
- ✅ Shopping Cart
- ✅ Order Placement
- ✅ MySQL Database
- ✅ Entity Framework Core
- ✅ Auto-seed data on first run
