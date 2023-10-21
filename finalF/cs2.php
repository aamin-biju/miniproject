<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="font/css/all.min.css">
    <link rel="stylesheet" href="ce2.css">
    <title>ELORA</title>
</head>
<body>
    <?php
    require_once 'connection.php';
    $query = "SELECT * FROM product WHERE dept='cs' AND category_id=1";
    $result = mysqli_query($con, $query);
    ?>

    <main>
        <div class="card-container">
            <?php
            while ($row = mysqli_fetch_assoc($result)) {
            ?>
            <div class="card-wrapper"> <!-- Add the card-wrapper div here -->
                <div class="card">
                    <div class="caption">
                        <p class="product_name"><?php echo $row['product_name']; ?></p>
                        <p class="product_desc"><?php echo $row['product_desc']; ?></p>
                        <p class="price"><?php echo $row['price']; ?></p>
                    </div>
                    <button class="add" data-url="<?php echo $row['product_url']; ?>">Apply for this internship</button>
                </div>
            </div> <!-- Closing the card-wrapper div here -->
            <?php
            }
            ?>
        </div>
    </main>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function() {
        // Add click event listener to all buttons with class "add"
        $('.add').on('click', function() {
            // Get the URL from the custom data attribute "data-url"
            var internshipUrl = $(this).data('url');
            var name = prompt('Please enter your name:');
            var email = prompt('Please enter your registered email:');

            // Check if name and email are provided
            if (name && email) {
                // Create the user information object
                var userInfo = {
                    name: name,
                    email: email,
                    internshipUrl: internshipUrl
                };

                // Perform the AJAX request to capture user information
                $.ajax({
                    type: 'POST',
                    url: 'capture_user_info.php',
                    data: userInfo,
                    success: function(response) {
                        // Handle the response from the server (if needed)
                        console.log('User info captured successfully:', response);
                        
                        // Redirect the user to the internship URL
                        window.location.href = internshipUrl;
                    },
                    error: function(xhr, status, error) {
                        console.error('Error:', error);
                    }
                });
            } else {
                // Handle the case where name or email is not provided
                alert('Name and email are required!');
            }
        });
    });
    </script>
</body>
</html>
