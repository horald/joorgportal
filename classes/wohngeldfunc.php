<?php

function wohngeldinput($menu,$idwert) {
  echo "<form class='form-horizontal' method='post' action='wohngeld.php?menu=".$menu."&idwert=".$idwert."&wohngeld=1'>";
  echo "<fieldset>";
  echo "<div class='control-group'>";

        $fquery = "SELECT * FROM tblbenutzer";
        $fresult = mysql_query($fquery) or die(mysql_error());
        echo "<select name='benutzer' size='1'>";
        while ($fline = mysql_fetch_array($fresult)) {
          $strindex = $fline[fldindex];
          $strbez = $fline[fldbez];
          echo "<option style='background-color:#c0c0c0;' value=".$strindex." >".$strbez."</option>";
        }
        echo "</select>";

  echo "  <div class='form-actions'>";
  echo "     <button type='submit' name='submit' class='btn btn-primary'>OK</button>";
  echo "     <button class='btn'>Abbruch</button>";
  echo "  </div>";
  echo "</div>";
  echo "</fieldset>";
  echo "</form>";

}

function wohngeldrechner() {
$benutzerid=$_POST['benutzer'];	
echo "Wohngeldrechner ".$benutzerid."<br>";
}

?>