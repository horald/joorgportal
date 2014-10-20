<?php
$listarray = array ( array ( 'label' => 'Bezeichnung',
                             'name' => 'bez', 
                             'width' => 100, 
                             'type' => 'text',
                             'chklink' => 'true',
                             'fldlink' => 'fldfilename',
                             'dbfield' => 'fldBez' ),
                     array ( 'label' => 'Untertitel',
                             'name' => 'untertitel',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'flduntertitel' ),
                     array ( 'label' => 'Status',
                             'name' => 'fldstatus', 
                             'width' => 100, 
                             'type' => 'selectid',
                             'getdefault' => 'true',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_status' ),
                     array ( 'label' => 'Anz Pers.',
                             'name' => 'anzpers',
                             'fieldhide' => 'true',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldanzpers' ),
                     array ( 'label' => 'Arbeitszeit',
                             'name' => 'arbeitszeit',
                             'fieldhide' => 'true',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldarbeitszeit' ),
                     array ( 'label' => 'schwierigkeitsgrad',
                             'name' => 'schwierigkeit',
                             'fieldhide' => 'true',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldschwierigkeit' ),
                     array ( 'label' => 'Kalorien',
                             'name' => 'kalorien',
                             'fieldhide' => 'true1',
                             'width' => 50, 
                             'type' => 'text',
                             'dbfield' => 'fldkalorien' ),
                     array ( 'label' => 'Link',
                             'name' => 'fldlink',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldfilename' ),
                     array ( 'label' => 'Zubereitung',
                             'name' => 'link',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'textarea',
                             'dbfield' => 'fldzubereitung' ),
                     array ( 'label' => 'Bild',
                             'name' => 'bild',
                             'fieldhide' => 'true',
                             'width' => 500, 
                             'type' => 'text',
                             'dbfield' => 'fldbilddatei' ),
                     array ( 'label' => '',
                             'fieldsave' => 'NO',
                             'width' => 5, 
                             'type' => 'icon',
                             'target' => '',
                             'func' => 'druckrezept.php',
                             'dbfield' => 'icon-file' ),
                     array ( 'label' => '',
                             'fieldsave' => 'NO',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'rezept.php',
                             'dbfield' => 'icon-file' ),
                     array ( 'label' => '',
                             'fieldsave' => 'NO',
                             'width' => 5, 
                             'type' => 'icon',
                             'func' => 'pdffunc.php',
                             'dbfield' => 'icon-file' ));

$filterarray = array ( array ( 'label' => 'Status',
                             'name' => 'fltstatus', 
                             'width' => 10, 
                             'type' => 'selectid',
                             'sign' => '=',
                             'dbtable' => 'tblstatus',
                             'seldbfield' => 'fldbez',
                             'seldbindex' => 'fldindex',
                             'dbfield' => 'fldid_status' ));


$pararray = array ( 'headline' => 'Rezepte ',
                    'dbtable' => 'tblrezepte',
                    'orderby' => '',
                    'strwhere' => '',
                    'fldindex' => 'fldIndex');
?>