<?php

function datenauswahl($menu,$idwert) {
  echo "<form class='form-horizontal' method='post' action='empfangen.php?empfangen=1&menu=".$menu."&idwert=".$idwert."'>";
  echo "<dd>Table:<input type='text' name='dbtable' value='".$menu."'/></dd>";
  echo "<dd>URL:<input type='text' name='urladr' value=''/></dd>";
  echo "<dd>dbwhere:<input type='text' name='dbwhere' value=''/></dd>";
  echo "<dd><input type='submit' value='Daten holen' /></dd>";
  echo "</form>";
}

function datenholen($menu) {
  echo "<br>Daten werden geholt...<br>";
  $urladr=$_POST['urladr'];
  $dbtable=$_POST['dbtable'];
  $dbwhere=$_POST['dbwhere'];
  $website="http://".$urladr.":8080/own/joorgsqlite/classes/senden.php?dbtable=".$dbtable."&dbwhere=".$dbwhere;
  //echo $website."<br>";
  ob_start();
  include($website);
  flush();
  $json=ob_get_contents();
  ob_end_clean();  

  include("../config.php");
  $obj=json_decode($json,true);
  $fields="";
  echo count($obj['data'])." Datensätze<br>";
  foreach ( $obj['field'] as $field) {
    //$fields=$fields."'".$field."',";
    $fields=$fields.$field.",";
  }
  $fields=substr($fields,0,strlen($fields)-1);
  foreach ( $obj['data'] as $datenarray ) {
    $daten="";
    foreach ( $obj['field'] as $field) {
      $daten=$daten."'".$datenarray[$field]."',";
    }
    $daten=substr($daten,0,strlen($daten)-1);
  	 $sqlins="INSERT INTO ".$obj['table']." (".$fields.") VALUES (".$daten.")";
    echo $sqlins."<br>";
    mysql_query($sqlins) or die("Error using mysql_query($sqlins): ".mysql_error());
    
  }	
}

?>