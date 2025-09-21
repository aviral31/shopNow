
# 🛒 ShopNow E-Commerce

ShopNow is a **full-stack MERN application** that provides a simple e-commerce platform with:
- **Customer App** (React frontend)  
- **Admin Dashboard** (React admin panel)  
- **Backend API** (Express + MongoDB)  

This project is designed for learning and as a starter template for small e-commerce apps.

---

## 📁 Project Structure

```

shopnow-ecommerce/
├── backend/
│   ├── server.js          ← Backend API (Express + MongoDB)
│   ├── package.json       ← Backend dependencies
│   └── .env               ← Database config (local/dev)
├── frontend/
│   ├── src/App.js         ← Customer-facing app
│   ├── package.json       ← React dependencies
│   └── public/index.html  ← HTML template
└── admin/
├── src/App.js         ← Admin dashboard app
├── package.json       ← React dependencies
└── public/index.html  ← HTML template

````

---

## 🚀 Quick Setup

Follow these steps to run the project locally:

### 1️⃣ Create Project Folder
```bash
mkdir shopnow-ecommerce
cd shopnow-ecommerce
````

### 2️⃣ Setup Backend

```bash
mkdir backend
cd backend
npm install --save-dev nodemon
```

* Copy your backend code into **`backend/server.js`**
* Add environment variables (see below)

### 3️⃣ Setup Frontend

```bash
cd ..
npx create-react-app frontend
cd frontend
npm install lucide-react
```

* Copy your **customer app code** into **`frontend/src/App.js`**

### 4️⃣ Setup Admin Dashboard

```bash
cd ..
npx create-react-app admin
cd admin
npm install lucide-react
```

* Copy your **admin dashboard code** into **`admin/src/App.js`**

### 5️⃣ Configure Environment Variables

Create **`backend/.env`**:

```env
PORT=5000
MONGODB_URI=mongodb://localhost:27017/shopnow
```

### 6️⃣ Run the Applications

Open **3 terminals**:

**Backend (port 5000):**

```bash
cd backend && npm run dev
```

**Frontend (port 3000):**

```bash
cd frontend && npm start
```

**Admin (port 3001):**

```bash
cd admin && npm start
```

---

## 🌐 Access the Apps

* **Customer App** → [http://localhost:3000](http://localhost:3000)
* **Admin Dashboard** → [http://localhost:3001](http://localhost:3001)
* **Backend API** → [http://localhost:5000](http://localhost:5000)

---

## 🛠 Tech Stack

* **Frontend & Admin**: React, Lucide Icons
* **Backend**: Node.js, Express, Mongoose, CORS, Dotenv
* **Database**: MongoDB

---

## 📌 Features

✅ Customer-facing shopping UI
✅ Admin dashboard for product management
✅ REST API with Express & MongoDB
✅ Simple, modular structure for quick learning

---

## 📖 Future Improvements

* 🔑 Authentication & Authorization (JWT)
* 💳 Payment Gateway Integration
* 📦 Order Management & Invoices
* 📊 Analytics & Reporting

---

## 👨‍💻 Author

## K Mohan Krishna

---

