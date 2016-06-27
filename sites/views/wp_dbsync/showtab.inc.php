<?php
$listarray = array ( array ( 'label' => 'Datenbank',
                             'width' => 10, 
                             'type' => 'show',
                             'dbfield' => 'flddbname' ),
                     array ( 'label' => 'Tabelle',
                             'width' => 100, 
                             'type' => 'text',
                             'dbfield' => 'fldtblname' ),                     
                     array ( 'label' => 'Index',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldtblindex' ),
                     array ( 'label' => 'Computer-ID',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldcompid' ),
                     array ( 'label' => 'Computer',
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblcomputer',
                             'seldbfield' => 'fldHost',
                             'seldbindex' => 'fldIndex',
                             'dbfield' => 'fldcompid' ),
                     array ( 'label' => 'Zeitpunkt',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'fldtimestamp' ),
                     array ( 'label' => 'Typ',
                             'width' => 10, 
                             'type' => 'text',
                             'dbfield' => 'flddbsync' ));

$filterarray = array ( array ( 'label' => 'Zeitpunkt von:',
                             'name' => 'zeitpunkt', 
                             'width' => 10, 
                             'type' => 'date',
                             'sign' => '>',
                             'dbfield' => 'fldtimestamp' ),
                       array ( 'label' => 'bis:',
                             'name' => 'bis', 
                             'width' => 10, 
                             'type' => 'date',
                             'sign' => '<=',
                             'dbfield' => 'fldtimestamp' ),
                       array ( 'label' => 'Tabelle',
                             'name' => 'dbtable', 
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tbltables',
                             'seldbfield' => 'fldbez',
                             'selorder' => 'fldbez',
//                             'selwhere' => 'fldid_computer=3',
                             'dbfield' => 'fldtblname' ),
                       array ( 'label' => 'Typ',
                             'name' => 'dbtyp', 
                             'width' => 10, 
                             'type' => 'select',
                             'sign' => '=',
                             'dbtable' => 'tblsynctyp',
                             'seldbfield' => 'fldBez',
                             'selorder' => 'fldBez',
                             'dbfield' => 'flddbsync' ));

$pararray = array ( 'headline' => 'dbsync',
                    'dbtable' => 'tbldbsync',
                    'selectcomputer' => 'false',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>