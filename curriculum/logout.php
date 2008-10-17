<?php
session_start();
$_SESSION['curriculum']['rut'] = NULL;
$_SESSION['curriculum']['acceso'] = NULL;
unset($_SESSION['curriculum']['rut']);
unset($_SESSION['curriculum']['acceso']);
?>