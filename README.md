# 💊 Pharmacy Vendor Management System (VMS)

A full-stack Pharmacy Vendor Management System designed to streamline vendor onboarding, medicine management, price comparison, and order processing through role-based access control.

## 🚀 Features

### 🔐 Authentication & Authorization
- JWT-based authentication
- Role-Based Access Control (RBAC)
- Separate login for:
  - Super Admin
  - Admin
  - Vendor

### 👨‍💼 Vendor Management
- Vendor registration with OTP verification
- Vendor business profile management
- Vendor personal profile management
- Vendor approval workflow
- Vendor status management (Active/Inactive)

### 💊 Medicine Management
- Master medicine database
- Add/Edit/Delete medicines
- Vendor-specific medicine pricing
- Bucket-wise medicine management
- Medicine search and filtering

### 💰 Medicine Price Comparison
- Compare medicine prices across vendors
- View discounts and offers
- Display best available price

### 📋 Vendor Application Workflow
- Submit vendor applications
- Review application details
- Admin approval/rejection process
- Profile updates after approval

### 📦 Order Management
- Order acceptance workflow
- Vendor order processing
- Order status updates

### 📂 Document Upload
- Aadhaar Card upload
- PAN Card upload
- Bank Passbook upload
- Cancelled Cheque upload
- Profile Image upload

---

# 🛠️ Tech Stack

## Frontend
- React.js
- React Router DOM
- Tailwind CSS
- Axios
- Flowbite
- Lucide React

## Backend
- Node.js
- Express.js
- JWT Authentication
- Multer

## Database
- MySQL

---

# 📁 Project Structure

```bash
project/
├── frontend/
│   ├── src/
│   ├── components/
│   ├── pages/
│   └── services/
│
├── backend/
│   ├── controllers/
│   ├── routes/
│   ├── middleware/
│   ├── uploads/
│   └── utils/
│
└── README.md
```

---

# ⚙️ Installation

## Clone Repository

```bash
git clone https://github.com/your-username/pharmacy-vms.git
cd pharmacy-vms
```

## Backend Setup

```bash
cd backend
npm install
```

Create a `.env` file:

```env
PORT=5000
DB_HOST=localhost
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=your_database
JWT_SECRET=your_secret_key
```

Start backend:

```bash
npm start
```

---

## Frontend Setup

```bash
cd frontend
npm install
npm run dev
```

Frontend runs on:

```bash
http://localhost:5173
```

Backend runs on:

```bash
http://localhost:5000
```

---

# 🔑 User Roles

## Super Admin
- Manage admins
- Manage vendors
- Approve vendor applications
- Access complete system

## Admin
- Review vendors
- Manage medicines
- Monitor operations

## Vendor
- Update profile
- Manage medicines
- Submit applications
- Process orders

---

# 📸 Screenshots

Add screenshots here:

```md
![Login](screenshots/login.png)

![Dashboard](screenshots/dashboard.png)

![Vendor Profile](screenshots/vendor-profile.png)

![Medicine Comparison](screenshots/medicine-comparison.png)
```

---

# 🔮 Future Enhancements

- Rider Module
- Real-time Notifications
- Email Integration
- Analytics Dashboard
- Payment Gateway Integration
- Mobile Application

---

# 🤝 Contributing

Contributions are welcome.

1. Fork the repository.
2. Create a feature branch.

```bash
git checkout -b feature-name
```

3. Commit your changes.

```bash
git commit -m "Add new feature"
```

4. Push to the branch.

```bash
git push origin feature-name
```

5. Open a Pull Request.

---

# 📄 License

This project is licensed under the MIT License.

---

# 👨‍💻 Author

**Aaditya Kumar**

- GitHub: https://github.com/your-github-username
- LinkedIn: https://linkedin.com/in/your-linkedin-profile

---

⭐ If you found this project useful, please consider giving it a star on GitHub!
