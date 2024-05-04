<?php

$host = 'mysql:host=localhost;dbname=aula';
$user = "root";
$senha = "senaisp";

try{
    $conexao = new PDO($host, $user, $senha);
   // echo ("Conexao realizada com exito!");
}
catch(PDOException $e){
    print_r($e);
}

?>