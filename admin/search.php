<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['searchInput'])) {
    $searchInput = $_POST['searchInput'];

    // Perform the search query here (modify it based on your specific database structure)
    // For example, if you want to search in the "product" table based on the product_name field:
    include_once "../config/dbconnect.php";
    $sql = "SELECT * FROM product WHERE product_name LIKE '%$searchInput%'";
    $result = $conn->query($sql);

    $sortedData = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $sortedData[] = $row['product_name']; // Add the search results to the sortedData array
        }
    }

    // Sort the data alphabetically
    sort($sortedData);

    // Return the sorted data as JSON
    header('Content-Type: application/json');
    echo json_encode($sortedData);
}
?>
