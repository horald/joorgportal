<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 250, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Anz.Tab.',
                             'name' => 'anztab', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldAnztab' ),
                     array ( 'label' => 'Dos.',
                             'name' => 'dos', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldDosierung' ),
                     array ( 'label' => 'morgens',
                             'name' => 'dosmorgens', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'flddosmorgens' ),
                     array ( 'label' => 'mittags',
                             'name' => 'dosmittags', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'flddosmittags' ),
                     array ( 'label' => 'abends',
                             'name' => 'dosabends', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'flddosabends' ),
                     array ( 'label' => 'nachts',
                             'name' => 'dosnachts', 
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'flddosnachts' ),
                     array ( 'label' => 'Seit',
                             'name' => 'seit', 
                             'width' => 100, 
                             'type' => 'date',
                             'dbfield' => 'fldvondatum' ),
                     array ( 'label' => 'Anz.Tage',
                             'name' => 'anztage', 
                             'width' => 100, 
                             'type' => 'calcanz',
                             'calcfield' => 'fldAnztab',
                             'calcteiler' => 'fldDosierung',
                             'fieldprthide' => 'true',
                             'dbfield' => 'fldanztage' ),
                     array ( 'label' => 'Bis',
                             'name' => 'bis', 
                             'width' => 100, 
                             'type' => 'todate',
                             'calcfield' => 'fldAnztab',
                             'calcteiler' => 'fldDosierung',
                             'calcdate' => 'fldvondatum',
                             'dbfield' => 'fldbisdatum' ));
                             


$pararray = array ( 'headline' => 'Tabletten',
                    'dbtable' => 'tbltabletten',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>