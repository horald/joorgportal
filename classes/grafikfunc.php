<?php

function grafikauswahl($menu,$idwert) {
  $timestamp = time();
  $jahr = date("Y",$timestamp);
  $monat = date("m",$timestamp);
  $pmon=substr($monat,0,1);
  //echo $pmon;
  if ($pmon=="0") {
  	 $monat = substr($monat,1,1);
  }	
	
  echo "<form name='eingabe' class='form-horizontal' method='post' action='grafik.php?grafik=1&menu=".$menu."&idwert=".$idwert."' enctype='multipart/form-data'>";

        //$fquery = "SELECT * FROM tblktoinhaber";
        $fquery = "SELECT * FROM tblktobanken";
        $fresult = mysql_query($fquery) or die(mysql_error());

        echo "<table>";

        $default = date('Y-m-01');
        echo "<tr>";
        echo "<td><label >Von Datum:</label></td>";
        echo "<td><div class='input-group date form_date col-md-12' data-date='' data-date-format='yyyy-mm-dd' data-link-field='dtp_input2' data-link-format='yyyy-mm-dd'>";
        echo "<input class='form-control' size='8' type='text' name='vondatum' value='".$default."' >";
        echo "<span class='input-group-addon'><span class='glyphicon glyphicon-calendar'></span></span>";
        echo "</div></td>";
        echo "<input type='hidden' id='dtp_input2' value='' />";
        echo "</tr>";

        $default = date('Y-m-01');
        $default = strtotime ( '+1 month' , strtotime ( $default ) ) ;
        $default = date ( 'Y-m-d' , $default );        
        echo "<tr>";
        echo "<td><label >Bis Datum:</label></td>";
        echo "<td><div class='input-group date form_date col-md-12' data-date='' data-date-format='yyyy-mm-dd' data-link-field='dtp_input2' data-link-format='yyyy-mm-dd'>";
        echo "<input class='form-control' size='8' type='text' name='bisdatum' value='".$default."' >";
        echo "<span class='input-group-addon'><span class='glyphicon glyphicon-calendar'></span></span>";
        echo "</div></td>";
        echo "<input type='hidden' id='dtp_input2' value='' />";
        echo "</tr>";

        echo "</table>"; 

/*
        echo "<div class='control-group'>";
        echo "  <label class='control-label' style='text-align:left' for='input01'>Jahr:</label>";
        echo "  <input type='text' id='input01' name='jahr' value='".$jahr."'>";
        echo "</div>";
        echo "<div class='control-group'>";
        echo "  <label class='control-label' style='text-align:left' for='input02'>Monat:</label>";
        echo "  <input type='text' id='input02' name='monat' value='".$monat."'>";
        echo "</div>";
*/        
        
        echo "<div class='control-group'>";
        echo "  <label class='control-label' style='text-align:left' >Kontoinhaber:</label>";
        echo "  <select name='ktoinhaber' size='1'>";
        while ($fline = mysql_fetch_array($fresult)) {
          //$index = $fline['fldIndex'];
          echo "<option style='background-color:#c0c0c0;' value=".$fline['fldBez'].">".$fline['fldBez']."</option>";
        }
        echo "  </select>";
        echo "</div>";


  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>Auswerten</button>";
  echo "</div>";
  echo "</form>";
}

function grafikanzeigen($jahr,$mon,$ktoinhaber,$vondatum,$bisdatum) {
  //$mon=6;
  //$jahr=2015;	
  $strmon=$mon;
  if ($mon<10) {
    $strmon="0".$mon;  
  }
  $sum=0;
  mysql_query("SET NAMES 'utf8'");
  //$query = "SELECT * FROM `tblktokonten` WHERE fldTyp='AUSGABE'";
  $query = "SELECT * FROM `tblktokonten` ";
  $result = mysql_query($query);
?>

  <script type='text/javascript'>
  window.onload = function () {
    var chart = new CanvasJS.Chart('chartContainer', {

      title:{
<?php
  echo "        text: 'Monatsaufstellung ".$vondatum." bis ".$bisdatum." von ".$ktoinhaber."'";              
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
    $qrymon = "SELECT sum(fldBetrag) AS Betrag FROM tblktosal,tblktobanken WHERE fldInhaber=tblktobanken.fldBez AND fldInhaber='".$ktoinhaber."' AND fldKonto='".$line[fldKurz]."' AND fldDatum>='".$vondatum."' AND fldDatum<='".$bisdatum."' AND flddel<>'J' ";
    $resmon = mysql_query($qrymon) or die("Error using mysql_query($qrymon): ".mysql_error());
    if ($linmon = mysql_fetch_array($resmon)) {
    	$betrag=$linmon[Betrag];
    	if ($betrag<>0) {
        $bez=$line[fldBez];
        $sum=$sum+$betrag;
        echo "         { label: '".$bez."', y: ".$betrag.", indexLabel: '".$betrag."' },";
  //    echo "         { label: '".$line[fldKurz]."', y: 100, indexLabel: '100' },";
      } 
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
  echo "<div class='alert alert-success'>";
  //echo $qrymon."<br>";
  echo "Summe:".$sum."<br>";  
  echo "</div>";
  
}

?>