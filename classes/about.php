<?php
//echo "define:"._JEXEC;
//defined('_JEXEC') or die;
include("bootstrapfunc.php");
bootstraphead();
bootstrapbegin("Joorgportal<br>");

if (isset($_POST['sellayout'])) {
  $layout=$_POST['sellayout'];
  $file = '../config.php';
  $find = '$layout="joorgmobil";';
  $repl = '$layout="joorgportal";';
  file_put_contents($file,str_replace($find,$repl,file_get_contents($file)));
} else {
  $layout="Joorgmobil";
}
//echo $layout."=layout<br>";

$ini_array = parse_ini_file("../version.txt");
$versdat=$ini_array['versdat'];
$versnr=$ini_array['versnr'];
//$versdat="21.01.2015";
//$versnr="1.004";
//echo "<a href='../index.php' class='btn btn-primary btn-sm active' role='button'>Menü</a> "; 
//echo "<a href='checkupdate.php?actvers=".$versnr."' class='btn btn-primary btn-sm active' role='button'>Update prüfen</a> ";
echo "<pre>";
echo "<table>";
echo "<tr><td>Stand</td>  <td>: ".$versdat."</td></tr>";
echo "<tr><td>Version</td><td>: ".$versnr."</td></tr>";
echo "<tr><td>Benutzer</td><td>: ".get_current_user()."</td></tr>";
/*
echo "<form method='post' action='about.php'>";
echo "<tr><td>Layout</td><td>: ";
echo "<select name='sellayout' size='1'>";
if ($layout=="Joorgportal") {
  echo "<option style='background-color:#c0c0c0;' value='Joorgportal' selected>Joorgportal</option>";
} else {
  echo "<option style='background-color:#c0c0c0;' value='Joorgportal' >Joorgportal</option>";
}
if ($layout=="Joorgmobil") {
  echo "<option style='background-color:#c0c0c0;' value='Joorgmobil' selected>Joorgmobil</option>";
} else {
  echo "<option style='background-color:#c0c0c0;' value='Joorgmobil' >Joorgmobil</option>";
}
echo "</select>";
echo "<td> <button type='submit' name='submit' class='btn btn-primary'> Aktualisieren </button></td>";
echo "</td></tr>";
echo "</form>";
*/
echo "<tr><td>Sourcecode unter</td><td>: <a href='https://github.com/horald/joorgsqlite' target='_blank'>github:joorgsqlite</a></td></tr>";
echo "</table>";
echo "</pre>";
bootstrapend();
?>