<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">
<head>

	 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        
	<link rel="stylesheet" type="text/css" href="main.css">
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
		

		<h4 class="box1">The Grades: 1st, 2nd, 3rd, 4th, 5th. Take your pick!</h4>
		<h4 class="box1">Choose your category: History, English/Literature, Geography, Science</h4>

		<p class="box3">Each quiz contains 4 questions. Input your answers to see how many you can get right! 

			<br>

			Each grade is a different difficulty. The higher the grade, the more points you can get! <br> </p>

			<h4 class="box1">1st Grade = 2 points. 2nd Grade and 3rd Grade = 3 Points. 4th Grade  = 4 points. 5th Grade = 5 points. </h4>

			<br>

	<form method="post" action="quiz.php">

		<div class="box2">

		 <label for="grade">Choose Grade Level:</label>

	
	<select name="grade" id="grade">
  		<option value="1">Grade 1</option>
  		<option value="2">Grade 2</option>
  		<option value="3">Grade 3</option>
  		<option value="4">Grade 4</option>
  		<option value="5">Grade 5</option>
	</select> 

	<label for="category">Choose Category</label>

	<select name="category" id="category">
  		<option value="1">History</option>
  		<option value="2">English</option>
  		<option value="3">Geography</option>
  		<option value="4">Science</option>
	</select> 
</div>


	<br>

	<div class="box4">

	<input type="submit" value="Start Game">

	<h4> Choose your grade and category. Start the quiz. Test your knowledge!</h4>
</div>
	</form>
</div>

</body>
</html>