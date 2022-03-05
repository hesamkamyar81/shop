<?php

session_start();
unset($_SESSION['name']);
unset($_SESSION['is-admin']);
header('Location: index.php');