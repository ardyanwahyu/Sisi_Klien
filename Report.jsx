import React, { useState, useEffect } from 'react';
import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import Login from './Pages/Auth/Login';
import Register from './Pages/Auth/Register';
import AdminLayout from './Layout/AdminLayout';
import Dashboard from './Pages/admin/Dashboard';
import Mahasiswa from './Pages/admin/Mahasiswa';
import Report from './Pages/Report'; // Import halaman Report
import ProtectedRoute from './ProtectedRoute';

const App = () => {
    const [isLoggedIn, setIsLoggedIn] = useState(false);

    useEffect(() => {
        // Cek status login dari localStorage
        const user = localStorage.getItem('isLoggedIn');
        if (user === 'true') {
            setIsLoggedIn(true);
        }
    }, []);

    return (
        <Router>
            <Routes>
                {/* Rute untuk autentikasi */}
                <Route path="/login" element={<Login setIsLoggedIn={setIsLoggedIn} />} />
                <Route path="/register" element={<Register />} />

                {/* Rute untuk admin dengan layout */}
                <Route
                    path="/admin/*"
                    element={
                        <ProtectedRoute isLoggedIn={isLoggedIn}>
                            <AdminLayout />
                        </ProtectedRoute>
                    }
                >
                    <Route path="dashboard" element={<Dashboard />} />
                    <Route path="reports" element={<Report />} /> {/* Tambahkan halaman Report */}
                </Route>

                {/* Redirect dari "/" ke "/admin/dashboard" */}
                <Route path="/" element={<Navigate to="/admin/dashboard" />} />

                {/* Halaman 404 untuk route yang tidak ditemukan */}
                <Route path="*" element={<div>404 - Page Not Found</div>} />
            </Routes>
        </Router>
    );
};

export default App;
