<?php

function showxml() {
//  $urlxml="http://localhost/daten/xml/sms-20150611175719.xml";
  $urlxml="http://localhost/daten/xml/sms.xml";
  $xml = simplexml_load_file($urlxml);
  echo "<div class='alert alert-success'>";
  echo "xml=".$urlxml."<br>";
  echo "</div>";

  echo "<table class='table table-hover'>";
  echo "<thead>";
  echo "<th>Kontakt</th>";
  echo "<th>Typ</th>";
  echo "<th>Datum</th>";
  echo "<th>Text</th>";
  echo "</thead>";

  foreach($xml->sms as $strbody) {
    $lweiter=true;
    //if ($strbody['contact_name']=="Flinkster") {
    // 	$lweiter=true;
    //} else {
    //  $lweiter=false;    
    //}
  	 if ($lweiter) {
  	 	echo "<tr>";
      echo "<td>".$strbody['contact_name']."</td>";	
      if ($strbody['type']=="2") {
        echo "<td>gesendet </td>";	 
      } else {
        echo "<td>empfangen </td>";	 
      }
      $epoch=floatval($strbody['date'])/1000;
      //echo "<td>".$epoch."</td>";	
      echo "<td>".date("d.m.Y H:i:m",$epoch)."</td>";	
      echo "<td>".$strbody['body']."</td>";	
  	 	echo "<tr>";
    }
  }
  echo "</table>";

}

?>