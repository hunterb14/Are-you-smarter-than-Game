<?php session_start(); 

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "game";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

?>

<!DOCTYPE html>
<html lang="en">
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        

    <link rel="stylesheet" type="text/css" href="score.css">
	<title>Are you smarter than...? Game!</title>
</head>
<body>

	
    <div class="container">
    <header>
        
        <h1 class="head">Are you smarter than a 5th grader?</h1>
        <h2 class="head">Think you have what it takes?</h2>
    </header>
</div>	

<div class="container">

		<h3>Congratulations on your score!</h3>

		<div class="box1">

		<?php if(isset($_POST['pname'])){
             		

             		$pname = $_POST['pname'];
             		$score = $_SESSION["score"];
             		
             		

             		$sql = "INSERT INTO scores (playerName, playerScore)
				VALUES ('$pname', '$score')";

				if ($conn->query($sql) === TRUE) {

    				echo "Hey $pname, your score of $score has been successfully recorded!";
		} else {
   			 echo "Error: " . $sql . "<br>" . $conn->error;
			}

             		
                } ?>

                <p><a href="index.php">Take the quiz again!</a></p>
            </div>
            </div>
</body>
</html>