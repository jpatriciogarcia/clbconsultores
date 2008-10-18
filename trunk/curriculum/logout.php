<?php
session_start();
session_destroy();
$_SESSION['curriculum']['rut'] = NULL;
$_SESSION['curriculum']['acceso'] = NULL;
unset($_SESSION['curriculum']['rut']);
unset($_SESSION['curriculum']['acceso']);
?>