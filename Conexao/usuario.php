<?php

class usuario{
private $nome;
private $usuario;
private $senha;
private $peso;
private $dataNascimento;

function __construct($nome, $_usuario, $senha, $peso, $_dataNascimento){
    $this->nome = $nome;
    $this->usuario = $_usuario;
    $this->senha = $senha;
    $this->peso = $peso;
    $this->dataNascimento = $_dataNascimento;
}

    function insere($conexao){
        $query = "INSERT INTO usuario(nome, usuario, senha, peso, dataNascimento)
        VALUES ('$this->nome','$this->usuario','$this->senha','$this->peso','$this->dataNascimento')";
        $conexao->query($query);
        echo("foi");
    }

function deletar($conexao,$cod){
    $query = "delete from usuario where id= '$cod'";
    $stmt = $conexao->prepare($query);
    $stmt->execute();
}

function mostrar($conexao,$cod){
    $query = "select *from usuario where id= '$cod'";
    $stmt = $conexao->query($query);
    $user= $stmt->fetch(PDO::FETCH_OBJ);
    if($user){
        $this->nome = $user->nome;
        $this->usuario = $user->usuario;
        $this->senha =  $user->senha;
        $this->peso = $user->peso;
        $this->dataNascimento = $user->dataNascimento;

    }
}
function getNome(){
    return $this->nome;
}
function getUsuario(){
    return $this->usuario;
}
function getPeso(){
    return $this->peso;
}
function getDataNascimento(){
    return $this->dataNascimento;
}


}
?>