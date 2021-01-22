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
        

    <link rel="stylesheet" type="text/css" href="results.css">
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

            <div class="box1">
            <h3> Your Results! See how you did!</h3>
        </div>
     <?php
            if(isset($_POST['number'])){
             $answers = $_POST['number'];

                }
                   

                if(isset($_POST['number'])){
               $grade = $_SESSION["grade"];

               $category = $_SESSION["category"];

               $correct = 0;
               $incorrect = 0;
               $x = 0;
               $y = 1;
               $num = 1;
               $score = 0;

               while($x < 4){
                
               $sql = "SELECT answer FROM answers WHERE gradeLevel = $grade AND categoryID = $category AND questionNum = $y";
                $result = $conn->query($sql);
                $row = $result->fetch_assoc();

                if(strtolower($row["answer"]) == strtolower($answers[$x])){

                    $correct = $correct + 1;

                    if($grade == 1){

                        $score = $score + 2;
                    }

                     if($grade == 2 || $grade == 3){

                        $score = $score + 3;
                    }

                     if($grade == 4){

                        $score = $score + 4;
                    }

                     if($grade == 5){

                        $score = $score + 5;
                    }


                    echo "You got Question $num correct!";

                    $num = $num + 1;

                    ?> <br> <?php 

                }else{

                     echo "You got Question $num incorrect! Correct answer = ";
                     echo $row["answer"];

                     $num = $num + 1;

                    $incorrect = $incorrect + 1;

                    ?> <br> <?php
                }

                $x = $x + 1;
                $y = $y + 1;

            }

            ?>

            <div class="box2"> <h3> Your final results</h3> 

            <br>

            <?php

            echo "You got $correct correct answers and $incorrect incorrect answers. ";
            echo "Your score = $score points";
            
}   
                ?>

                <br>


                <?php if(isset($_POST['number'])){

                    if($score > 0){

                         $_SESSION["score"] = $score;
                    ?> 

                    <h5>Input your name for your score to be stored</h5>
                    <form method="post" action="score.php">

                        <input name="pname" type="text" />

                        <input type="submit" value="Submit">

                        <p><a href="index.php">Take the quiz again!</a></p>


                        <?php

                }

                } ?>
                


            </div>

</div>
</body>
</html>