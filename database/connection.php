<?php

// Database connection configuration for Agricart
// Use environment variables (Render/Vercel) or Supabase defaults for local development
//
// IMPORTANT: For cloud deployments (Render, etc.), we use Supabase's connection pooler
// because the direct host (db.*.supabase.co) resolves to IPv6 which is unreachable
// on many cloud free tiers. The pooler resolves to IPv4 reliably.

// Detect if running in cloud (Render sets the RENDER env var automatically)
$is_cloud = getenv('RENDER') || getenv('DATABASE_URL');

if ($is_cloud) {
    // Cloud defaults: use Supabase Transaction Pooler (IPv4 compatible)
    $db_host = getenv('DB_HOST') ?: 'aws-0-ap-south-1.pooler.supabase.com';
    $db_port = getenv('DB_PORT') ?: '6543';
    $db_user = getenv('DB_USER') ?: 'postgres.xvkjvismjdjtiwtypfff';
} else {
    // Local development: use direct Supabase connection
    $db_host = getenv('DB_HOST') ?: 'db.xvkjvismjdjtiwtypfff.supabase.co';
    $db_port = getenv('DB_PORT') ?: '5432';
    $db_user = getenv('DB_USER') ?: 'postgres';
}

$db_name = getenv('DB_NAME') ?: 'postgres';
$db_pass = getenv('DB_PASS') ?: 'Q7KnsSrYSAvKEcPC';
$db_type = getenv('DB_TYPE') ?: 'pgsql';

// Force IPv4 resolution as additional safety measure
$resolved_host = gethostbyname($db_host);
if ($resolved_host !== $db_host) {
    $db_host = $resolved_host;
}

// Try connecting using a full DATABASE_URL (for cloud deployment)
$database_url = getenv('DATABASE_URL');

try {
    if ($database_url) {
        $conn = new PDO($database_url);
    } else {
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

