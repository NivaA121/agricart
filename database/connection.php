<?php

// Database connection configuration for Agricart
// Use environment variables (Render/Vercel) or Supabase defaults for local development

$db_host = getenv('DB_HOST') ?: 'db.xvkjvismjdjtiwtypfff.supabase.co';
$db_port = getenv('DB_PORT') ?: '5432';
$db_name = getenv('DB_NAME') ?: 'postgres';
$db_user = getenv('DB_USER') ?: 'postgres';
$db_pass = getenv('DB_PASS') ?: 'Q7KnsSrYSAvKEcPC';
$db_type = getenv('DB_TYPE') ?: 'pgsql'; // Default to pgsql for Supabase

// Force IPv4 resolution for Supabase hostnames
// Render's free tier doesn't support IPv6 outbound connections,
// and Supabase hostnames can resolve to IPv6 which causes "Network is unreachable"
$resolved_host = gethostbyname($db_host);
if ($resolved_host !== $db_host) {
    // Successfully resolved to IPv4 address
    $db_host = $resolved_host;
}

// Try connecting using a full DATABASE_URL (for cloud deployment)
$database_url = getenv('DATABASE_URL');

try {
    if ($database_url) {
        $conn = new PDO($database_url);
    } else {
        // Fallback for local development or individual variables
        if ($db_type === 'pgsql') {
            $dsn = "pgsql:host=$db_host;port=$db_port;dbname=$db_name;sslmode=require";
        } else {
            $dsn = "mysql:host=$db_host;dbname=$db_name";
        }
        $conn = new PDO($dsn, $db_user, $db_pass);
    }

    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

} catch(PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}

?>
