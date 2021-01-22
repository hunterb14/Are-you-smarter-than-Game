<?php

session_start();
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
        

    <link rel="stylesheet" type="text/css" href="quiz.css">
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

    <div class="box2">
     <?php
            if(isset($_POST['grade'])){
             $grade = $_POST['grade'];
            

           $category = $_POST['category']; 

           $_SESSION["grade"] = $grade;
           $_SESSION["category"] = $category;


            if($category == 1)

                echo "Your selected grade: $grade . Your selected category: History."; 
            

            if($category == 2)

                echo "Your selected grade: $grade . Your selected category: English/Literature."; 
            
             if($category == 3)

                echo "Your selected grade: $grade . Your selected category: Geography."; 
            

            if($category == 4)

                echo "Your selected grade: $grade . Your selected category: Science."; 

                }
                    
                
                ?>
          
                <form method="post" action="results.php">

    
                <?php


    if(isset($_POST['grade'])){

$sql = "SELECT question FROM questions WHERE gradeLevel = $grade AND categoryID = $category";
$result = $conn->query($sql);

    $number = 1;

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {

        echo "Question ";
        echo "$number . ";
        echo   $row["question"]."<br>";

        $number = $number + 1;
?>      
        <?php echo "Answer: " ?> <input name="number[]" type="text" /><br><br>
<?php
    }
} else {
    echo "0 results";
}

    }
?>

    <?php if(isset($_POST['grade'])) {

        ?>

    <input type="submit" value="Submit Answers">
    </form>

    <h3>Submit your answers to see your results!</h3>
</div>

    <?php } ?>

   </div>
</body>
</html>