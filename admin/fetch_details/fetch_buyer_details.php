<?php
include ("..\..\database\connection.php");

// Fetch data from the buyer_details table
$query = "SELECT * FROM buyer_details";
$result = mysqli_query($conn, $query);

// Generate CSV content
$csvContent = "Name,Photo,Email,Contact,Address,State,Pin code,Created On\n";

while ($row = mysqli_fetch_assoc($result)) {
    $photoFilename = $row['photo'];
    $photoUri = "../../images/" . $photoFilename;
    $address = str_replace("\n", "\\n", $row['address']);
    $state = str_replace("\n", "\\n", $row['state']);

    // Concatenate CSV row with properly formatted data
    $csvContent .= "{$row['full_name']},{$photoUri},{$row['email']},{$row['contact_no']},\"{$address}\",\"{$state}\",{$row['pin_code']},{$row['created_on']}\n";
}

// Set headers for CSV download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="buyer_details.csv"');

// Output CSV content
echo $csvContent;

// Close the database connection
mysqli_close($conn);
?>
