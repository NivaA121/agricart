<?php
include("../session/session_start.php");
include("../session/session_check.php");
include("../database/connection.php");

// Check if a location is entered in the search bar
if(isset($_GET['location'])) {
    $search_location = $_GET['location'];
    // Modify the query to filter results based on the entered location
    $query = "SELECT * FROM shop_details WHERE city = '$search_location' OR address = '$search_location'";
} else {
    // If no location is entered, retrieve all shop details
    $query = "SELECT * FROM shop_details";
}

$result = mysqli_query($conn, $query);

if(isset($_SESSION['username'])) {
    $username = $_SESSION['username'];

    $buyer_id_query = "SELECT buyer_id FROM buyer_details WHERE email = '$username'";
    $buyer_id_result = mysqli_query($conn, $buyer_id_query);
    $buyer_id_row = mysqli_fetch_assoc($buyer_id_result);
    $buyer_id = $buyer_id_row['buyer_id'];
    // echo $buyer_id;
    $cartcount= "SELECT COUNT(*) AS product_count FROM cart_details WHERE buyer_id = $buyer_id";
    $cartcount_result = $conn->query($cartcount);
    
    // Check if the query executed successfully
    if ($cartcount_result) {
        // Fetch the result
        $row = $cartcount_result->fetch_assoc();
    }
    


}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgriCart</title>
    <link rel="stylesheet" href="home.css">
    <link rel="icon" href="../images/titlelogo.png" type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1 , shrink-to-fit=no">
</head>
<body>
<section id="header">
    <a onclick="reloadPage()"><img src="../images/homelogo.png" class="logo"></a>
    <div>
        <ul id="navbar">
            <li  class="module"><a href="index.php">Home</a></li>
            <li class="module"><a href="product.php">Products</a></li>
            <li class="module"><a class="active" href="shop.php">Shop</a></li>
            <li  class="module"><a href="about.php">About</a></li>
            <li class="module"><a href="contact.php">Contact</a></li>
            <li class="icon">
                <div class="cart">
                    <a href="cart.php"><ion-icon name="cart-outline"></ion-icon></a>
                    <?php if ($row['product_count'] > 0): ?>
                        <sup><?php echo $row['product_count']; ?></sup>
                    <?php endif; ?>
                </div>
            </li>
            <li class="dropdown"><a href="#" class="dropbtn"><ion-icon name="person-outline"></ion-icon></a>
                <div class="dropdown-content">
                      <a href="profile.php"><ion-icon name="person-circle-outline"></ion-icon> Profile</a>
                      <a href="order.php"><ion-icon name="cube-outline"></ion-icon> Orders</a>
                      <a href="../login/logout.php"><ion-icon name="log-out-outline"></ion-icon> Log Out</a>
                </div>
            </li>
        </ul>
    </div>
</section>

<section id="map-hadder" class="shop-headder">
    <h2>Find Shops</h2>
    <p><h3>Find the location of shops near you</h3></p>
</section>

<center>
    <section id="search">
        <form method="GET" action="shop.php">
        <button type="submit"><ion-icon name="search-sharp"></ion-icon></button>
            <input type="text" name="location" placeholder="Search nearby shops by location...">
            <!-- <button type="submit"><ion-icon name="search-sharp"></ion-icon></button> -->
        </form>
    </section>
    
</center>
<br><br>

<center><h1 class="map-h1">Find nearby shops</h1></center>
<br><br>

<section id="shop-details" class="section-p1">
    <?php
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo '<div class="outer"><div class="detalis_2">';
            echo '<h2>' . $row['name'] . '</h2>';
            echo '<div class="abcd">';
            echo '<li>';
            echo '<ion-icon name="map-outline"></ion-icon>';
            echo '<p>' . $row['address'] . '</p>';
            echo '</li>';
            echo '<li>';
            echo '<ion-icon name="mail-open-outline"></ion-icon>';
            echo '<p>' . $row['email'] . '</p>'; 
            echo '</li>';
            echo '<li>';
            echo'<ion-icon name="call-outline"></ion-icon>';
            echo'<p>' . $row['contact_no'] . '</p>';
            echo'</li>';
            echo'<li>';
            echo'<ion-icon name="time-outline"></ion-icon>';
            echo'<p>' . $row['time'] . '</p>';
            echo'</li>';
            echo'<li>';
            echo'<ion-icon name="person-circle-outline"></ion-icon>';
            echo'<p>' . $row['contact_person'] . '</p>';
            echo'</li>';
            echo '<li>';
            echo '<a href="' . $row['location'] . '" target="_blank"><button class="normal">Get direction</button></a>'; // Assuming 'map_link' is a column in your table
            echo '</li>';
            echo '</div>';
            echo '</div>';
            echo '<div class="img_abcd">';
            echo '<img src="../images/' . $row['photo'] . '" alt="' . $row['name'] . '">';
            echo '</div></div>';
        }
    } else {
        // If no shops are found, display a message
        if(isset($_GET['location'])) {
            echo '<div class="location-message">';
            echo '<center><h2>No shops found in ' . $search_location . '</h2></center>';
            echo '<p>There are currently no shops in the location "' . $search_location . '". Please try again with a different location.</p>';
            echo '<br>';
            echo '<br>';
            echo '</div>';
        } else {
            echo '<div class="message">';
            echo '<center><h2>No shops registered</h2></center>';
            echo '<p>There are currently no shops registered. Please check back later.</p>';
            echo '<br>';
            echo '<br>';
            echo '</div>';
        }
    }
    mysqli_close($conn);
    ?>
</section>

<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
<?php
include ("footer.php");
?>
</html>