<?php
header("content-type: text/html; charset=utf-8");

function hilfefunc($menu,$idwert,$menuid,$pagename,$pageno) {
if ($pagename=="") {
  if ($pageno=="") {
    $qryind="SELECT * FROM tblhelpindex WHERE fldmenu='".$idwert."'";
    $resind = mysql_query($qryind) or die("Error using mysql_query($qryind): ".mysql_error());
    if ($rowind = mysql_fetch_array($resind) ) { 
  	   $pageno=$rowind['fldpageno'];
  	 }  
  }	
  $query="SELECT * FROM tblhelppage WHERE fldpageno='".$pageno."'";
} else {
  $query="SELECT * FROM tblhelppage WHERE fldpagename='".$pagename."'";
}  
mysql_query("SET NAMES 'utf8'");
$result = mysql_query($query) or die("Error using mysql_query($sql): ".mysql_error());
$lok=false;
$pageno=0;
if ($row = mysql_fetch_array($result) ) { 
  $lok=true;
  $pageno=$row['fldpageno'];
}
echo "<br>";
if ($typ<>"print") {
  echo "<a href='showtab.php?menu=".$menu."&idwert=".$idwert."&menuid=".$menuid."' class='btn btn-primary btn-sm active' role='button'>zur Anwendung</a> "; 
  echo "<a href='help.php?menu=".$menu."&pagename=helpindex' class='btn btn-primary btn-sm active' role='button'>Index</a> "; 
  echo "<a href='help.php?menu=".$menu."&pageno=".$pageno."&action=back' class='btn btn-primary btn-sm active' role='button'>zurück</a> "; 
  echo "<a href='help.php?menu=".$menu."&pageno=".$pageno."&action=forward' class='btn btn-primary btn-sm active' role='button'>vor</a> "; 
  //echo "<a href='html2pdf.php' target='_blank' class='btn btn-primary btn-sm active' role='button'>Export to PDF</a> "; 
}

echo "<p class='text-justify'>";
if ($lok) { 
  $_SESSION["menu"]=$menu;
  include("../help/de-DE/".$row['fldhelpurl']);
  echo "<br> Seite ".$pageno;
} else {
  echo "<div class='alert alert-error'>";
  echo "helppage nicht gefunden.";	
  echo "</dic>";
}
echo "</p>";

}

function xhilfefunc($menu,$idwert) {
  include("../config.php");
  $pfad = "../sites/views/wp_".$menu."/";
  echo "<a class='btn btn-primary' href='showtab.php?menu=".$menu."&idwert=".$idwert."'>zur&uumlck</a> ";
  $query="SELECT * FROM tblmenu_liste WHERE fldIndex=".$idwert;
  $result = mysql_query($query) or die(mysql_error());
  $line = mysql_fetch_array($result); 
  if ($line['fldhelplink']<>"") {
    echo "<a class='btn btn-primary' href='http://localhost/tools/mediawiki/index.php/Joorgportal/".$line['fldhelplink']."'>Mediawiki-Hilfe</a><br>";
  } else {
    echo "<a class='btn btn-primary' href='http://localhost/tools/mediawiki/index.php/Hauptseite'>Mediawiki-Hilfe</a><br>";
  }  
  $datei="help.".$langshort.".html";
  if ( file_exists ( $pfad.$datei ) ) {
    $lines = file($pfad.$datei);
    foreach ($lines as $line_num => $helpline) {
      echo $helpline;
    }
  } else {
    $query="SELECT * FROM tbltranslate WHERE fldName='NOHELP' and fldLang='".$langshort."'";
    //echo $query."<br>";
    $result = mysql_query($query) or die(mysql_error());
    if ($line = mysql_fetch_array($result)) {
      $hilfe=$line['fldBez'];
    } else {
      $hilfe="Keine Hilfe vorhanden";
    }
    echo "<br>";
    echo "<div class='alert alert-info'>";
    echo $hilfe.".";
    echo "</div>";
  }  
}
?>