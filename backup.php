<?php





if($beaches == "Yes")
{
    $sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Beach and Marine'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Beaches and Scenery Categories</h3>";
while($row = $result->fetch_assoc()) {
    
    echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>




<?php

if($wildlife == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Wildlife'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Wildlife Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>



<?php

if($scenery == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Scenery and Landscapes'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Scenery and Landscapes Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>


<?php

if($culture == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Culture'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Culture Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>


<?php

if($historic == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Historic Sites'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Historical Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>


<?php

if($adventure == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Adventure'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Adventure Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>

<br/>
<br/>
<br/>

<?php

if($sports == "Yes")
{
$sql = "SELECT `tagid`,`tagname` FROM `tags` WHERE `tagtype`= 'Sports'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
// output data of each row
echo "<h3>Sports Categories</h3>";
while($row = $result->fetch_assoc()) {

echo "id: " . $row["tagid"]. " - Name: " . $row["tagname"]. " <br>";
}
} else {
echo "0 results";
}

}
?>