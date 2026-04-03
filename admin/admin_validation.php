<?php
include ("../database/connection.php");
include ("../session/session_start.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Specific restricted credentials for Admin Portal (Using Env Vars for Vercel)
    $allowed_email = getenv('ADMIN_EMAIL') ?: 'agricart@gmail.com';
    $allowed_password = getenv('ADMIN_PASS') ?: '1234567890';

    if ($email === $allowed_email && $password === $allowed_password) {
        // Clear any existing session to ensure a fresh starts
        session_unset();
        $_SESSION['username'] = $email;
        $_SESSION['role'] = 'admin'; // Optional: store role for future reference
        header("Location: index.php");
        exit();
    } else {
        $_SESSION['login_error'] = "Access Denied: Invalid Admin Credentials.";
        header("Location: admin_login.php");
        exit();
    }
} else {
    header("Location: admin_login.php");
    exit();
}
?>
