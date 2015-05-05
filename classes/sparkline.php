<?php
header("Content-type: image/png");

$breite=30;
$hoehe=25;
$bild = imagecreatetruecolor($breite, $hoehe);

// Hintergrundfarbe erstellen
$hintergrundfarbe = imagecolorallocate ($bild, 50, 50, 50);
imagefill($bild, 0, 0, $hintergrundfarbe);

// Farben festlegen
$gruen = imagecolorallocate($bild, 0, 255, 0);
$rot = imagecolorallocate($bild, 255, 0, 0);

// Viereck zeichen
// mit folgenden Kordinaten (x1, y1, x2, y2, Farbe);
imagefilledrectangle ($bild, 2, 18, 6, 8, $gruen);
imagefilledrectangle ($bild, 10, 18, 14, 6, $gruen);
//imagefilledrectangle ($bild, 10, 8, 14, 6, $rot);

// Ausgabe des Bildes
imagepng($bild);

?>