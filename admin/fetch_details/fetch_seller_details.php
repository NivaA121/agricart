<?php
include ("..\..\database\connection.php");

// Fetch data from the seller_details table
$query = "select * from seller_details";
$result = mysqli_query($conn, $query);

// Generate CSV content
$csvContent = "First Name,Last Name,Photo,Email,Contact,Government ID,GST Number,Created On,Account Status, Verification Status\n";

while ($row = mysqli_fetch_assoc($result)) {
    $photoFilename = $row['photo'];
    $photoUri = "../../images/" . $photoFilename;
    $status = ($row['status'] == 0) ? "active" : "disabled";
    $verify = ($row['verify'] == 0) ? "verify" : "completed";
    $gst = ($row['gst_no'] == 0) ? "------" : $row['gst_no'];
    $csvContent .= "{$row['first_name']},{$row['last_name']},{$photoUri},{$row['email']},{$row['contact_no']},{$row['government_id']},{$gst},{$row['created_on']},{$status},{$verify}\n";
}

// Set headers for CSV download
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="seller_details.csv"');

// Output CSV content
echo $csvContent;

// Close the database connection
mysqli_close($conn);
?>



