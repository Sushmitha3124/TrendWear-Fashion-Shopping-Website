import React, { Suspense, lazy } from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate, useLocation } from 'react-router-dom';
import { ProductProvider } from './context/ProductContext';
import { CartProvider } from './context/CartContext';
import { WishlistProvider } from './context/WishlistContext';
import { AuthProvider, useAuth } from './context/AuthContext';
import Navbar from './components/Navbar/Navbar';
import Footer from './components/Footer/Footer';
import ForgotPassword from './pages/ForgotPassword/ForgotPassword.jsx'; 

 // Lazy load components
const Home           = lazy(() => import('./pages/Home/Home'));
const Products       = lazy(() => import('./pages/Products/Products'));
const ProductDetails = lazy(() => import('./pages/ProductDetails/ProductDetails'));
const Search         = lazy(() => import('./pages/Search/Search'));
const About          = lazy(() => import('./pages/About'));
const Contact        = lazy(() => import('./pages/Contact'));
const Login          = lazy(() => import('./pages/Login'));
const Cart           = lazy(() => import('./pages/Cart/Cart'));
const Wishlist       = lazy(() => import('./pages/Wishlist/Wishlist'));
const Checkout       = lazy(() => import('./pages/Checkout/Checkout'));
const CheckoutAddress = lazy(() => import('./pages/Checkout/CheckoutAddress'));
const Payment        = lazy(() => import('./pages/Checkout/Payment'));
const OrderConfirmation = lazy(() => import('./pages/OrderConfirmation/OrderConfirmation'));
const AdminDashboard = lazy(() => import('./pages/AdminDashboard/AdminDashboard'));
const Profile = lazy(() => import('./pages/Profile/Profile'));
const OrderTracker = lazy(() => import('./pages/OrderTracker/OrderTracker'));
const OrderDetails = lazy(() => import('./pages/OrderDetails/OrderDetails'));

// Loading Spinner
const LoadingSpinner = () => (
  <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
    Loading...
  </div>
);

// Admin Route wrapper
const AdminRoute = () => {
  const { isAuthenticated, isAdmin } = useAuth();
  
  if (!isAuthenticated) return <Navigate to="/login" replace />;
  if (!isAdmin) return <Navigate to="/" replace />;
  
  return <AdminDashboard />;
};

// Public Route wrapper
const PublicRoute = ({ children }) => {
  const { isAuthenticated, isAdmin, isLoading } = useAuth();
  if (isLoading) {
    return (
      <div style={{ display: 'flex', justifyContent: 'center', alignItems: 'center', height: '100vh' }}>
        Loading...
      </div>
    );
  }
  if (isAuthenticated) return <Navigate to={isAdmin ? "/admin" : "/"} replace />;
  return children;
};

function AppLayout() {
  const location = useLocation();
  const isAdminRoute = location.pathname.startsWith('/admin');

  return (
    <>
      {!isAdminRoute && <Navbar />}
      <Suspense fallback={<LoadingSpinner />}>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/products" element={<Products />} />
          <Route path="/products/:id" element={<ProductDetails />} />
          <Route path="/search" element={<Search />} />
          <Route path="/about" element={<About />} />
          <Route path="/contact" element={<Contact />} />
          <Route path="/login" element={<PublicRoute><Login /></PublicRoute>} />
          <Route path="/forgot-password" element={<PublicRoute><ForgotPassword /></PublicRoute>} />

          <Route path="/admin/*" element={<AdminRoute />} />
          <Route path="/cart" element={<Cart />} />
          <Route path="/wishlist" element={<Wishlist />} />
          <Route path="/checkout" element={<CheckoutAddress />} />
          <Route path="/checkout/address" element={<CheckoutAddress />} />
          <Route path="/checkout/payment" element={<Payment />} />
          <Route path="/order-confirmation" element={<OrderConfirmation />} />
          <Route path="/profile" element={<Profile />} />
          <Route path="/orders" element={<OrderTracker />} />
          <Route path="/order-details/:id" element={<OrderDetails />} />
          <Route path="*" element={<Navigate to="/" replace />} />
        </Routes>
      </Suspense>
      {!isAdminRoute && <Footer />}
    </>
  );
}

function App() {
  return (
    <AuthProvider>
      <ProductProvider>
        <CartProvider>
          <WishlistProvider>
            <Router>
              <AppLayout />
            </Router>
          </WishlistProvider>
        </CartProvider>
      </ProductProvider>
    </AuthProvider>
  );
}

export default App;

