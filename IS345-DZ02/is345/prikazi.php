<!DOCTYPE html> 
<html>
<head> 

	<title>IS345-DZ02-2246</title> 

</head>

<body>

<?php 
	
	$conn = mysql_connect("localhost","root","");
	mysql_select_db("is345");
	
	if(!$conn)
		echo "error";
	
	$query = mysql_query("SELECT * FROM dz02");
	
?>

	<table  border="1"> 
		<tr> 
			<td>Naziv:</td> 
			<td>Autor:</td> 
			<td>Opis:</td>
			<td>Video:</td> 
		</tr> 

<?php
	while($result = mysql_fetch_array($query, MYSQL_ASSOC))
	{
?>

		<tr> 
			<td><?php echo $result['Naziv'] ?></td> 
			<td><?php echo $result['Autor'] ?></td> 
			<td><?php echo $result['Opis'] ?></td> 
			<td><video width="300" height="200" controls>
			<source src=<?php echo $result['Referenca'] ?> type="video/mp4" />
			</video></td>
		</tr> 
		
<?php 
	} 
?> 

	</table>

</body> 
</html>
