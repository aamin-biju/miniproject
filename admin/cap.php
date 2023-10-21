<!DOCTYPE html>
<html>
<head>
  <title>Admin</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="stylelink.css">
</head>
<body>
  <div>
    <table class="table">
      <thead>
        <tr>
          <th class="text-center">S.N.</th>
          <th class="text-center"> Name</th>
          <th class="text-center">Internship URL</th>
          <th class="text-center">email</th>
        </tr>
      </thead>
      <?php
        $server = "localhost";
        $user = "root";
        $password = "";
        $db = "swiss_collection";

        $conn = mysqli_connect($server, $user, $password, $db);

        if (!$conn) {
          die("Connection Failed: " . mysqli_connect_error());
        }

        $sql = "SELECT * FROM captured_info";
        $result = $conn->query($sql);

        if (!$result) {
          die("Query Failed: " . mysqli_error($conn));
        }

        $count = 1;

        if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {
      ?>
      <tr>
        <td><?= $count ?></td>
        <td><?= $row["name"] ?></td>
        <td><?= $row["internship_url"] ?></td>
        <td><?= $row["email"] ?></td>
      </tr>
      <?php
          $count++;
        }
      }
      ?>
    </table>
  </div>
</body>
</html>
