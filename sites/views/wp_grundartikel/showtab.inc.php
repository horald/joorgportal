<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbez' ),
                     array ( 'label' => 'Bezeichnung (Mehrzahl)',
                             'name' => 'bezmz', 
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbezmz' ),
                     array ( 'label' => 'Kalorien kcal / 100g',
                             'name' => 'kalorien', 
                             'width' => 200, 
                             'type' => 'text',
                             'prenumber' => '0',
                             'dbfield' => 'fldkalorien' ),
                     array ( 'label' => 'Faktor',
                             'name' => 'faktor', 
                             'width' => 50, 
                             'type' => 'text',
                             'prenumber' => '0',
                             'dbfield' => 'fldfaktor' ));

$pararray = array ( 'headline' => 'Grundartikel',
                    'dbtable' => 'tblgrundartikel',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldindex');
?>