<?php

include("../config.php");
//require("phpsqlajax_dbinfo.php");

// Start XML file, create parent node

echo "phpsqlajax_genxml";
$doc = domxml_new_doc("1.0");
$node = $doc->create_element("markers");
$parnode = $doc->append_child($node);
echo "hinter new doc";

// Select all the rows in the markers table

//$query = "SELECT * FROM tblmarkers ";
//$result = mysql_query($query);
//if (!$result) {
//  die('Invalid query: ' . mysql_error());
//}

//header("Content-type: text/xml");

// Iterate through the rows, adding XML nodes for each

//while ($row = @mysql_fetch_assoc($result)){
  // ADD TO XML DOCUMENT NODE
  //$node = $dom->createElement("marker");
  //$newnode = $parnode->appendChild($node);
  //echo $row['fldname']."<br>";
  //$newnode->setAttribute("name",$row['fldname']);
  //$newnode->setAttribute("address", $row['fldaddress']);
  //$newnode->setAttribute("lat", $row['fldlat']);
  //$newnode->setAttribute("lng", $row['fldlng']);
  //$newnode->setAttribute("type", $row['fldtype']);
//}

//$xmlfile = $doc->dump_mem();
//echo $xmlfile;


?>