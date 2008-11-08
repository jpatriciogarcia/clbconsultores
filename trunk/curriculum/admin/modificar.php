<?php
session_start();

$_SESSION['curriculum']['rut'] = $_GET['rut'];
$_SESSION['curriculum']['acceso'] = 0;
header("Location: ../");

