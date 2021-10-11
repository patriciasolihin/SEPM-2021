<?php
	include("header.inc");
?>
<?php
	include("nav.inc");
?>
	
	<main>
	<form action='/location.html' method='post'>
	<table class="locationfilter" border=0>
	<tr><td>Search by Suburb</td><td>Advanced search</td></tr>
	<tr><td><input type="text" id="suburbtext" placeholder="Search" name="suburb"></td>
	<td><select name="advsearch" id="advdrop">
	<option value="Drive-through">Drive-through Clinic</option>
	<option value="Walk-in">Walk-in Clinic</option>
	<option value="Open">Open Now</option>
	<option value="Testing-Registration-Form-Site">Testing Registration Form Site</option>
	<option value="No-GP-referral-required">No GP refferal required</option>
	<option value="Pathology-collection-centre">Pathology Collection Centre</option>
	<option value="Commonwealth-respiratory-clinic">Commonwealth respiratory Clinic</option>
	</select></td>
	<td><button type='submit' id='locfilter'>Search</button></td><tr>
	
	</table>
	</form>
	<div id="sortby">
	<label for='sortby'> Sort by </label>
	<select name="Sortby" id='sort_drop'>
	<option value="A-ZSuburb"> A-Z by Suburb </option>
	<option value="A-Zlocation"> A-Z by Location </option>
	<option value="waittime"> Shortest wait time </option>
	</select>
	</div>
	
	<table border=1 id="locationtable">
	<tr><th>Suburb</th><th>Location</th><th>Site Type</th><th>Today's hours</th><th>Estimated Wait time</th></tr>
	<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "sepm";
	
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

	$sql = "SELECT * FROM location";
	$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
	echo "<tr>\n";
	echo "<td>{$row['suburb']}</td>\n";
	echo "<td>{$row['location']}</td>\n";
	echo "<td>{$row['site_type']}</td>\n";
	echo "<td>{$row['opening_hour']}</td>\n";
	echo "<td>{$row['waittime']}</td>\n";
	echo "</tr>";
	}
} else {
    echo "0 results";
}

$conn->close();
?>
	
	</table>
	</main>
	
<?php include("footer.inc"); 
?>