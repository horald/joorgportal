<?php

function exportsqlstruc() {

}

function exporttables($datei) {

  include("../config.php");
  $file = fopen($datei,"a");
  $query = "SELECT * FROM tbltables";
  $result = mysql_query($query) or die(mysql_error());
  while ($line = mysql_fetch_array($result)) { 
    //echo $line['fldbez']."<br>";
    $tblname=$line['fldbez'];
    $where=$line['fldfilter'];
   if ($where<>"") {
     $where=" WHERE ".$where;	
   }

    $qrycol = "SHOW COLUMNS FROM $dbname.$tblname";
    //echo $qrycol."<br>";
    $rescol = mysql_query($qrycol) or die(mysql_error());
    $lincol = mysql_fetch_array($rescol);
    $getcol = $lincol[0];
    $cntcol = 0;
    while ($lincol = mysql_fetch_array($rescol)) {
      $cntcol++;
      if ($getcol == "") {
        $getcol = $lincol[0];
      } else {
        $getcol = $getcol . "," . $lincol[0];
      }       
    }

    $qryval = "SELECT ".$getcol." FROM ".$tblname.$where;
    //echo $qryval."<br>";
    $resval = mysql_query($qryval) or die(mysql_error());
    while ($linval = mysql_fetch_array($resval)) {
      $val = "'".$linval[0]."'";
      for($count = 1; $count <= $cntcol; $count++) {
        $val = $val . ",'".$linval[$count]."'";
      }
      $qry = "INSERT INTO ".$tblname."(".$getcol.") VALUES (".$val.")";
      //echo $qry."<br>";
      fwrite($file, $qry.";\n");

    }
    //echo "-----<br>";
    fwrite($file, "\n");
  } 
  fclose($file);  

}

?>