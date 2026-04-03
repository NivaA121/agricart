# Agricart - Agriculture E-Commerce Platform 🚜🌾

Agricart is a modern, secure, and robust e-commerce platform designed to connect farmers (Sellers) directly with consumers (Buyers). It streamlines the agriculture supply chain by providing a direct marketplace for farm-fresh products, seeds, organic fertilizers, and tools.

## 🚀 Recent Migration & Technologies
The project has been successfully migrated from a legacy PHP architecture to a high-performance **PostgreSQL** environment using **Supabase** for cloud database management.

- **Frontend**: HTML5, CSS3, JavaScript (Unified Design System)
- **Backend**: PHP 8.x (with PDO Prepared Statements)
- **Database**: PostgreSQL (on Supabase Cloud)
- **Deployment**: Vercel (using `vercel-php` runtime)
- **Authentication**: Custom Secure Session-based Auth with Argon2 Password Hashing

## ✨ Key Features

### 🛒 Buyer Portal
- **Browse Inventory**: Real-time listing of agriculture products from multiple sellers.
- **Cart Management**: Add, update, and manage your shopping cart before purchase.
- **Secure Checkout**: Automated order generation and tracking.
- **Personalized Dashboard**: View order history and manage your profile.

### 🚜 Seller Portal
- **Shop Management**: Create and verify your unique agriculture shop profile.
- **Inventory Control**: Add, edit, and track stock for diverse products.
- **Sales Analytics**: View real-time order data and buyer information.
- **Security**: Dedicated seller verification process with BigInt GST/Contact handling.

### 🛡️ Admin Portal
- **Comprehensive Analytics**: Dashboard with real-time revenue and sales graphing.
- **User Management**: Unified management for all registered buyers and sellers.
- **Security Control**: Restricted, dedicated Admin Login portal with specific access roles.
- **Reporting**: Advanced data filtering and management tools.

## 🛠️ Local Setup Instructions

1.  **Clone the Repo**:
    ```bash
    git clone https://github.com/manthan0808/Agricart.git
    cd Agricart
    ```
2.  **Database Configuration**:
    - Update `database/connection.php` with your Supabase credentials.
3.  **Run Locally**:
    - Place the folder in your XAMPP `htdocs` directory.
    - Start Apache and MySQL (though the DB is in the cloud).
    - Access via `http://localhost/Agricart/`.

## 📜 License
This project is open-source and available under the MIT License.
