<?php

function grafikauswahl() {

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