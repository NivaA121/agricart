<?php
include ("..\..\database\connection.php");

// Fetch data from the contact_details and buyer_details tables
// $query = "SELECT contact_details.*, buyer_details.first_name AS buyer_name FROM contact_details
//           LEFT JOIN buyer_details ON contact_details.buyer_id = buyer_details.buyer_id";
$query = "select* from contact_details";
$result = mysqli_query($conn, $query);

// Generate CSV content
$csvContent = "Buyer Name,E-mail,Description,Status,Created On\n";

while ($row = mysqli_fetch_assoc($result)) {
    $status = ($row['status'] == 0) ? "New" : "Viewed";
    $description = str_replace("\n", " ", $row['message']); // Replace newlines with spaces in the description
    $description = str_replace('"', '""', $description); // Escape double quotes in the description
    $createdOn = new DateTime($row['created_on']);
    $formattedCreatedOn = $createdOn->format('Y-m-d H:i:s'); // Adjust the format as needed
    $csvContent .= "{$row['buyer_name']},{$row['email']}," . '"' . "{$description}" . '"' . ",{$status},{$formattedCreatedOn}\n";
}

// Set headers for CSV download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="message_details.csv"');

// Output CSV content
echo $csvContent;

// Close the database connection
mysqli_close($conn);
?>
