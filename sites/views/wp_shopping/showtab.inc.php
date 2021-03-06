<?php

$listarray = array ( array ( 'label' => 'Nr',
                             'width' => 10, 
                             'type' => 'nummer',
                             'dbfield' => 'dummy' ),
                     array ( 'label' => 'Reihenfolge',
                             'name' => 'reihenfolge',
                             'width' => 100, 
                             'fieldhide' => 'true',
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldReihenfolge' ),
                     array ( 'label' => 'Barcode',
                             'name' => 'barcode',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldBarcode' ),
                     array ( 'label' => 'Artikelnr',
                             'name' => 'artikelnr',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldArtikelnr' ),
                     array ( 'label' => 'Typ',
                             'name' => 'typ',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldTyp' ),
                     array ( 'label' => 'Sort',
                             'name' => 'sort',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldSort' ),
                     array ( 'label' => 'Vorrat',
                             'name' => 'vorrat',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'flde01vorrat' ),
                     array ( 'label' => 'Kopf',
                             'name' => 'kopf',
                             'fieldhide' => 'true',
                             'width' => 100, 
                             'export' => 'N',
                             'type' => 'dummy',
                             'dbfield' => 'fldid_kopf' ),
                     array ( 'label' => 'Bezeichnung',
                             'name' => 'bez',
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldBez' ),
                     array ( 'label' => 'Konto',
                             'name' => 'konto', 
                             'fieldhide' => 'true1',
                             'getdefault' => 'true',
                             'width' => 5, 
                             'export' => 'J',
                             'type' => 'select',
                             'dbtable' => 'tblktokonten',
                             'seldbfield' => 'fldKurz',
                             'dbfield' => 'fldKonto' ),
                     array ( 'label' => 'Kaufort',
                             'name' => 'kaufort', 
                             'getdefault' => 'true',
                             'width' => 5, 
                             'type' => 'select',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbwhere' => "fldo01typ='FREMD'",
                             'dbfield' => 'fldOrt' ),
                     array ( 'label' => 'Abteilung',
                             'name' => 'abteilung', 
                             'getdefault' => 'true',
                             'width' => 100, 
                             'default' => '(ohne)',
                             'export' => 'N',
                             'sqliteimport' => 'N', 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblabteilung',
                             'seldbfield' => 'fldAbteilung',
                             'dbfield' => 'fldAbteilung' ),
                     array ( 'label' => 'Status',
                             'name' => 'status',
                             'width' => 10, 
                             'default' => 'offen',
                             'export' => 'J',
                             'type' => 'select',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'dbfield' => 'fldStatus' ),
                     array ( 'label' => 'Anz',
                             'name' => 'anz',
                             'default' => 1, 
                             'width' => 5, 
                             'type' => 'text',
                             'dbfield' => 'fldAnz' ),
                     array ( 'label' => 'E-Preis',
                             'name' => 'epreis', 
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldPreis' ),
                     array ( 'label' => 'G-Preis',
                             'name' => 'gpreis', 
                             'width' => 10, 
                             'type' => 'calc',
                             'calcfield' => 'fldAnz',
                             'fieldsave' => 'NO',
                             'sqliteimport' => 'N',
                             'dbfield' => 'fldPreis' ),
                     array ( 'label' => 'Datum',
                             'name' => 'einkaufsdatum', 
                             'width' => 10, 
                             'export' => 'J',
                             'type' => 'date',
                             'fieldhide' => 'true',
                             'default' => 'now()',
                             'dbfield' => 'fldEinkaufDatum' ),
                     array ( 'label' => 'Timestamp',
                             'name' => 'timestamp', 
                             'width' => 10, 
                             'type' => 'text',
                             'fieldhide' => 'true1',
                             'dbfield' => 'fldtimestamp' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'mark.php',
                             'dbfield' => 'icon-book' ) );

$filterarray = array ( array ( 'label' => 'Status:',
                             'name' => 'status', 
                             'addfunc' => 'true',
                             'funcsetstatus' => 'true',
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'dbfield' => 'fldStatus' ),
                       array ( 'label' => ' Kaufort:',
                             'name' => 'kaufort', 
                             'addfunc' => 'true',
                             'funcsetbutton' => 'true',
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'selwhere' => "fldo01typ='FREMD'",
                             'seldbfield' => 'fldBez',
                             'dbfield' => 'fldOrt' ));
/*
                       array ( 'label' => ' Barcode:',
                             'name' => 'barcode', 
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblbarcode',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldbarcode',
                             'dbfield' => 'fldBarcode' ));
*/

$dummy = array (                             
                       array ( 'label' => ' ohne Barcode',
                             'name' => 'checkbarcode', 
                             'type' => 'checkempty1',
                             'sign' => '=',
                             'dbfield' => 'fldBarcode' ));

$pararray = array ( 'headline' => 'Einkaufsliste',
                    'dbtable' => 'tblEinkauf_liste',
                    'addfunc' => 'true',
                    'getimportwhere' => 'true',
                    'fldarchivdat' => 'fldArchivDat',
                    'orderby' => 'fldReihenfolge, fldOrt, fldabteilung, fldBez',
                    'strwhere' => "fldArchivDat=''",
                    'fldindex' => 'fldIndex',
                    'fldbez' => 'fldBez',
                    'fldEinkaufDat' => 'fldEinkaufDatum',
                    'strort' => 'J',
                    'markbgcolor' => '88ff88',
                    'ummarkbgcolor' => 'ffffff',
                    'marksuccess' => 'OK',
                    'marksign' => '=',
                    'markfield' => 'fldStatus');

?>