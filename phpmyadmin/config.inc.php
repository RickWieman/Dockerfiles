<?php
// Simple phpMyAdmin configuration
// Uses http authentication; make sure linked server is 'mysql'

$i = 1;
$cfg['Servers'][$i]['auth_type'] = 'http';
$cfg['Servers'][$i]['host'] = 'mysql';
$cfg['Servers'][$i]['connect_type'] = 'tcp';
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['AllowNoPassword'] = false;

$cfg['UploadDir'] = '/tmp';
$cfg['SaveDir'] = '/tmp';
?>
