<?php
$menu=$_GET[menu];
$idwert=$_GET[idwert];
include("../config.php");
include("grafikfunc.php");
include("bootstrapfunc.php");
include("../sites/views/wp_".$menu."/showtab.inc.php");
bootstraphead();
bootstrapbegin($pararray['headline']);

echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zurück</a> ";
$grafik = $_GET['grafik'];
if ($grafik==1) {
  echo "grafik";
  //grafikanzeigen();
} else {
  grafikauswahl($menu,$idwert);
}

bootstrapend();
?>