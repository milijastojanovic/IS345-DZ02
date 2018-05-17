<?php
	
	mysql_connect("localhost","root","");
	mysql_select_db("is345");
	
	if(isset($_POST['unesi']))
	{
		$folder = "uploaded/";
		
		$name = $_FILES['file']['name'];
		$temp = $_FILES['file']['tmp_name'];
		
		move_uploaded_file($temp,$folder.$name);
		
		$naziv = $_POST['naziv'];
		$autor = $_POST['autor'];
		$opis = $_POST['opis'];
		$referenca = "http://localhost/is345/uploaded/$name";
		$type = $_FILES['file']['type'];
		
		mysql_query("INSERT INTO dz02 VALUE ('','$naziv','$opis','$referenca','','','$autor','$type')");
	}
	
?>
	
<!DOCTYPE html> 
<html>
<head> 

	<title>IS345-DZ02-2246</title> 

</head>

<body>

	<form action="index.php" method="POST" enctype="multipart/form-data">
	
		<table>
	 
		<tr><td>
		
		Naziv: <input type="text" name="naziv" /> </br>
		
		Autor: <input type="text" name="autor" /> </br>
		
		Opis: <textarea name="opis"> </textarea> </br>
		
		<input type="file" name="file"/> </br>
		
		<input type="submit" name="unesi" value="Unesi" />
	 
		</td></tr>
		
		</table>
	
	</form>

	<?php
	
	if(isset($_POST['unesi']))
	{
		echo "</br>" .$name ." has beed uploaded" . "</br>";
	}

	?>
	
	</br>
	
	<form action="prikazi.php" method="POST">
	
		<input type="submit" name="prikazi" value="Prikazi" />
	
	</form>
	
</body> 
</html>
