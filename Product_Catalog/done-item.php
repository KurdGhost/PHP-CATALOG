<?php
            // if (isset($POST['submit'])){
                // }


            include("ftp-conn.php");
            $destination_file = "/htdocs/image/".time().basename($_FILES['myfile']['name']);
            $source_file = $_FILES['myfile']['tmp_name']; 
            



            $itemname = $_POST["itemname"];
            $itemprice = $_POST["itemprice"];
            $categories = $_POST["categories"];
            $pin = $_POST["pin"];
            $imagename = $_FILES["myfile"]["name"];

            $sqlnameIMG = time().basename($imagename);
           
            
            $servername = "root";
            $username = "root";
            $password = "";
            $dbname = "testing";

            if($pin == "2005") {

            $ftp_conn = ftp_connect($ftp_server) or die("Error connecting to Server");
            $login = ftp_login($ftp_conn, $ftp_user_name, $ftp_user_pass);

                if(ftp_put($ftp_conn, $destination_file, $source_file, FTP_BINARY)) {
                } else {
            header('Location: add-item.php?Error=Conn');
                }

                ftp_close($ftp_conn);

            try {
              $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
              // set the PDO error mode to exception
              $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
              $sql = "INSERT INTO `product` (`product_name`, `product_brand`, `product_price`, `product_image`) VALUES ('$itemname', '$categories', '$itemprice', '$sqlnameIMG')";
              // use exec() because no results are returned
              $conn->exec($sql);
            header('Location: add-item.php?Success=Done');
            } catch(PDOException $e) {
            header('Location: add-item.php?Error=Conn');
            }

            $conn = null;

            



          } else {
            header('Location: add-item.php?Error=Pin');
            $conn = null;
          }
          



            ?>

            <a href="add-item.php">Gå tillbaka</a>