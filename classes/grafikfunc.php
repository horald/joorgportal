<?php

function grafikauswahl($menu,$idwert) {
  echo "<form name='eingabe' class='form-horizontal' method='post' action='grafik.php?grafik=1&menu=".$menu."&idwert=".$idwert."' enctype='multipart/form-data'>";

        $fquery = "SELECT * FROM tblktoinhaber";
        $fresult = mysql_query($fquery) or die(mysql_error());
        echo "<div class='control-group'>";
        echo "  <label class='control-label' style='text-align:left' for='input01'>Kontoinhaber:</label>";
        echo "  <select name='ktoinhaber' size='1'>";
        while ($fline = mysql_fetch_array($fresult)) {
          $index = $fline['fldindex'];
          echo "<option style='background-color:#c0c0c0;' value=".$index.">".$fline['fldBez']."</option>";
        }
        echo "  </select>";
        echo "</div>";


  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>Auswerten</button>";
  echo "</div>";
  echo "</form>";
}

function grafikanzeigen() {
  $mon=6;
  $jahr=2015;	
  $strmon=$mon;
  if ($mon<10) {
    $strmon="0".$mon;  
  }
  mysql_query("SET NAMES 'utf8'");
  $query = "SELECT * FROM `tblktokonten` WHERE fldTyp='AUSGABE'";
  $result = mysql_query($query);
?>

  <script type='text/javascript'>
  window.onload = function () {
    var chart = new CanvasJS.Chart('chartContainer', {

      title:{
<?php
  echo "        text: 'Monatsaufstellung ".$strmon."/".$jahr." von CHRIS'";              
?>
      },
      axisY:{
        gridThickness: 0
	  },        
      data: [//array of dataSeries              
        { //dataSeries object

         type: 'column',
         dataPoints: [
<?php
  while ($line = mysql_fetch_array($result)) { 
    $qrymon = "SELECT sum(fldBetrag) AS Betrag, month(fldDatum) as Monat FROM tblktosal,tblktobanken WHERE fldInhaber=tblktobanken.fldBez AND fldInhaber='CHRIS' AND month(fldDatum)=".$mon." AND fldKonto='".$line[fldKurz]."' AND year(fldDatum)=".$jahr." GROUP BY month(fldDatum)";
    $resmon = mysql_query($qrymon) or die("Error using mysql_query($qrymon): ".mysql_error());
    if ($linmon = mysql_fetch_array($resmon)) {
    	$bez=$line[fldBez];
    	$bez=substr($bez,0,8);
      echo "         { label: '".$bez."', y: ".$linmon[Betrag].", indexLabel: '".$linmon[Betrag]."' },";
    }
  }
?>
         ]
       }
       ]
     });

    chart.render();
  }
  </script>


<?php
  echo "<div id='chartContainer' style='height: 300px; width: 100%;'>";
  echo "</div>";
}

?>