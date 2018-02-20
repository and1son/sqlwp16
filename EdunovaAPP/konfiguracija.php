<?php

include_once 'funkcije.php';

session_start();

$putanjaAPP = "/EdunovaAPP/";
$naslovAPP="Edunova APP";
$appID="EDUNOVAAPP";
$dev=true;

$host="localhost";
$dbname="edunovapp16";
$dbuser="edunova";
$dbpass="edunova";

$veza = new PDO("mysql:host=" . $host . ";dbname=" . $dbname,$dbuser,$dbpass);
