<?php
$listarray = array ( array ( 'label' => 'Artikelnr',
                             'name' => 'artikelnr', 
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldartikelnr' ),
                     array ( 'label' => 'Barcode',
                             'name' => 'barcode', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldv01barcode' ),
                     array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldv01bez' ),
                     array ( 'label' => 'Grundartikel',
                             'name' => 'grundartikel', 
                             'fieldhide' => 'true',
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblgrundartikel',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_grundartikel' ),
                     array ( 'label' => 'Menge',
                             'name' => 'menge', 
                             'width' => 20, 
                             'type' => 'text',
                             'dbfield' => 'fldv01menge' ),
                     array ( 'label' => 'ME',
                             'name' => 'me', 
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblmengein',
                             'seldbfield' => 'fldkurz',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_me' ),
                     array ( 'label' => 'Anz',
                             'name' => 'anz', 
                             'width' => 20, 
                             'type' => 'text',
                             'dbfield' => 'fldv01anzahl' ),
                     array ( 'label' => 'ME',
                             'name' => 'anzme', 
                             'width' => 20, 
                             'type' => 'text',
                             'dbfield' => 'fldv01anzme' ),
                     array ( 'label' => 'Zimmer',
                             'name' => 'zimmer', 
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'seldbwhere' => "fldo01typ='ZIMMER'",
                             'dbfield' => 'fldv01ort' ),
                     array ( 'label' => 'Möbel',
                             'name' => 'moebel', 
                             'fldort' => 'fldv01ort',
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'seldbwhere' => "fldo01typ='MOEBEL'",
                             'dbfield' => 'fldv01wo' ),
                     array ( 'label' => 'Fach',
                             'name' => 'fach', 
                             'fldort' => 'fldv01ort',
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'seldbwhere' => "fldo01typ='FACH'",
                             'dbfield' => 'fldv01fach' ),
                     array ( 'label' => 'Konto',
                             'name' => 'konto', 
                             'width' => 20, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblktokonten',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'dbfield' => 'fldv01konto' ),
                     array ( 'label' => 'gekauft am',
                             'name' => 'gekauftam', 
                             'width' => 20, 
                             'type' => 'date',
                             'dbfield' => 'fldv01gekauftam' ),
                     array ( 'label' => 'Status',
                             'name' => 'status', 
                             'width' => 50, 
                             'type' => 'select',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'dbfield' => 'fldv01status' ),
                     array ( 'label' => 'Bemerkung',
                             'name' => 'bemerkung', 
                             'fieldhide' => 'true',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldv01bemerk' ),
                     array ( 'label' => 'Bild',
                             'name' => 'bild', 
                             'width' => 20, 
                             'type' => 'blobid',
                             'dbfield' => 'fldv01bild' ));
                             

$filterarray = array ( array ( 'label' => 'Status:',
                             'name' => 'status', 
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'dbfield' => 'fldv01status' ),
                       array ( 'label' => 'Zimmer:',
                             'name' => 'zimmer', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'selwhere' => "fldo01typ='ZIMMER'",
                             'dbfield' => 'fldv01ort' ),
                       array ( 'label' => 'Möbel',
                             'name' => 'moebel', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'selwhere' => "fldo01typ='MOEBEL'",
                             'dbfield' => 'fldv01wo' ),
                       array ( 'label' => '<br>Konto:',
                             'name' => 'konto', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblktokonten',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'dbfield' => 'fldv01konto' ),
                       array ( 'label' => 'Grundartikel:',
                             'name' => 'grundartikel', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblgrundartikel',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_grundartikel' ),
                     array ( 'label' => '<br>Datum:',
                             'name' => 'fltdatum',
                             'value' => '', 
                             'width' => 500, 
                             'type' => 'date',
                             'sign' => '>=',                              
                             'dbfield' => 'fldv01gekauftam' ),
                      array ( 'label' => 'Suchen',
                             'name' => 'suchen', 
                             'width' => 10, 
                             'sign' => ' like ',
                             'type' => 'search',
                             'dbfield' => 'fldv01bez' ));

$pararray = array ( 'headline' => 'Vorrat',
                    'dbtable' => 'tblvorrat',
                    'orderby' => '',
                    'strwhere' => '',
                    'updateaktual' => 'true',
                    'fldindex' => 'fldv01index');
?>