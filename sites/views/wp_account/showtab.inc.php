<?php
$listarray = array ( array ( 'label' => '',
                             'name' => 'chkbox', 
                             'width' => 2, 
                             'type' => 'checkbox',
                             'dbfield' => 'fldsel' ),
                     array ( 'label' => 'JN',
                             'name' => 'jn', 
                             'width' => 5, 
                             'type' => 'choice',
                             'dbfield' => 'fldsel' ),
                     array ( 'label' => 'ID',
                             'width' => 10, 
                             'type' => 'show',
                             'dbfield' => 'fldIndex' ),
                     array ( 'label' => 'Pos',
                             'name' => 'pos',
                             'width' => 10, 
                             'type' => 'pos',
                             'dbwherefield' => 'fldDatum',
                             'dbwherename' => 'datum',
                             'dbfield' => 'fldPos' ),
                     array ( 'label' => 'Datum',
                             'name' => 'datum',
                             'getdefault' => 'true',
                             'width' => 80, 
                             'type' => 'date',
                             'dbfield' => 'fldDatum' ),
                     array ( 'label' => 'Bezeichnung',
                             'name' => 'bezeichnung', 
                             'width' => 200, 
                             'type' => 'text',
                             'dbfield' => 'fldBez' ),
                     array ( 'label' => 'Konto',
                             'name' => 'konto', 
                             'getdefault' => 'true',
                             'width' => 50, 
                             'type' => 'select',
                             'dbtable' => 'tblktokonten',
                             'seldbfield' => 'fldKurz',
                             'seldborder' => 'fldKurz',
                             'dbfield' => 'fldKonto' ),
                     array ( 'label' => 'Ort',
                             'name' => 'ort', 
                             'fieldhide' => 'true1',
                             'width' => 100, 
                             'type' => 'selectid',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'seldbwhere' => "fldo01typ='FREMD'",
                             'dbfield' => 'fldid_ort' ),
                     array ( 'label' => 'Bankkonto',
                             'name' => 'bankkonto', 
                             'fieldhide' => 'true',
                             'getdefault' => 'true',
                             'width' => 100, 
                             'defaultfilter' => 'true',
                             'filtervalue' => 'bankkonto',
                             'filterfield' => 'fldwert',
                             'type' => 'select',
                             'dbtable' => 'tblktobanken',
                             'seldbfield' => 'fldBez',
                             'dbfield' => 'fldInhaber' ),
                     array ( 'label' => 'Umbuchinhaber',
                             'name' => 'umbuchihnaber', 
                             'fieldhide' => 'true',
                             'getdefault' => 'true',
                             'width' => 100, 
                             'defaultfilter' => 'true',
                             'filtervalue' => 'bankkonto',
                             'filterfield' => 'fldwert',
                             'type' => 'select',
                             'dbtable' => 'tblktobanken',
                             'seldbfield' => 'fldBez',
                             'dbfield' => 'fldUmbuchInhaber' ),
                     array ( 'label' => 'Betrag',
                             'name' => 'betrag',
                             'width' => 70, 
                             'type' => 'calc',
                             'dbfield' => 'fldBetrag' ),
                     array ( 'label' => 'Bar',
                             'name' => 'bar',
                             'width' => 70, 
                             'type' => 'calcsum',
                             'dbfield' => 'fldBetrag' ),
                     array ( 'label' => 'Fix',
                             'name' => 'fix',
                             'fieldhide' => 'true',
                             'width' => 70, 
                             'type' => 'zahl',
                             'dbfield' => 'fldFix' ),
                     array ( 'label' => 'Dateiname',
                             'name' => 'dateiname',
                             'fieldhide' => 'true', 
                             'width' => 5, 
                             'type' => 'text',
                             'dbfield' => 'fldfilename' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'pdffunc.php',
                             'dbfield' => 'icon-file' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'mark.php',
                             'dbfield' => 'icon-book' ),
                     array ( 'label' => '',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'detailfunc.php',
                             'dbfield' => 'icon-th' ) );

$filterarray = array (
                      array ( 'label' => 'Oberkonto:',
                             'name' => 'oberkonto', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'selectref',
                             'reftype' => '2',
                             'sign' => '=',
                             'dbtable' => 'tblktooberkonten',
                             'dbtableref' => 'tblktogrpzuord',
                             'dbtablerf2' => 'tblktogrp_liste',
                             'seldbrefindex' => 'fldKurz',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'seldbindx2' => 'fldindex',
                             'seldbreffld' => 'fldkonto',
                             'seldbrefbez' => 'fldKurz',
                             'selrefid' => 'fldid_oberkonto',
                             'dbfield' => 'fldkonto' ),
                      array ( 'label' => 'Bankkonto:',
                             'name' => 'bankkonto', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblktobanken',
                             'seldbfield' => 'fldBez',
                             'dbfield' => 'fldInhaber' ),
                      array ( 'label' => 'Konto:',
                             'name' => 'konto', 
                             'value' => '(ohne)',
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblktokonten',
                             'seldbfield' => 'fldKurz',
                             'selorder' => 'fldKurz',
                             'dbfield' => 'fldKonto' ),
                     array ( 'label' => '<br>Zeitraum von:',
                             'name' => 'zeitraumvon',
                             'value' => '', 
                             'width' => 500, 
                             'type' => 'date',
                             'sign' => '>=',                              
                             'dbfield' => 'fldDatum' ),
                     array ( 'label' => 'Zeitraum bis:',
                             'name' => 'zeitraumbis',
                             'value' => '', 
                             'width' => 500, 
                             'type' => 'date',
                             'sign' => '<=',                              
                             'dbfield' => 'fldDatum' ),
                     array ( 'label' => 'Sel:',
                             'name' => 'askjn',
                             'value' => '', 
                             'width' => 50, 
                             'type' => 'select',
                             'sign' => '=',   
                             'dbtable' => 'tblsel',
                             'seldbfield' => 'fldbez',                           
                             'dbfield' => 'fldsel' ),
                     array ( 'label' => '<br>Ort:',
                             'name' => 'fltort', 
                             'width' => 1, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblorte',
                             'seldbfield' => 'fldBez',
                             'seldbindex' => 'fldIndex',
                             'selwhere' => "fldo01typ='FREMD'",
                             'dbfield' => 'fldid_ort' ),
                     array ( 'label' => 'Korrektur',
                             'name' => 'korrektur',
                             'value' => '', 
                             'width' => 50, 
                             'type' => 'checkbox',
                             'dbfield' => 'fldKorrektur' ),
                      array ( 'label' => 'Suchen',
                             'name' => 'suchen', 
                             'width' => 10, 
                             'sign' => ' like ',
                             'type' => 'search',
                             'dbfield' => 'tblktosal.fldBez' ));
                             

$pararray = array ( 'headline' => 'Buchf&uumlhrung',
                    'dbtable' => 'tblktosal',
                    'orderby' => 'fldDatum,fldPos',
                    'strwhere' => "fldDetailind=''",
                    'flddetail' => 'fldDetailind',
                    'marktype' => 'zahl',
                    'markbgcolor' => '22ff22',
                    'markerrbgcolor' => 'ff2222',
                    'unmarkbgcolor' => 'ffffff',
                    'markdbfield' => 'fldBetrag',
                    'startdbfield' => 'fldBetrag',
                    'markfield' => 'fldFix',
                    'markseldb' => 'J',
                    'markselno' => 'N',
                    'marktoggle' => 'true',
                    'markfield2' => 'fldsel',
                    'funcsetchkbox' => 'true',
                    'fldbez' => 'fldBez',
                    'fldindex' => 'fldIndex');

?>