<?php
class usuario{
private $_nome;
private $_usuario;
private $_senha;
private $_peso;
private $_data;

function __construct($nome, $_usuario, $senha, $peso, $data){
    $this->nome = $nome;
    $this->usuario = $_usuario;
    $this->senha = $senha;
    $this->peso = $peso;
    $this->data = $data;
}

    function insere($conexao){
        $query = "INSERT INTO usuario(nome, usuario, senha, peso, data)
        VALUES ('$this->nome', '$this->usuario', '$this->senha', '$this->peso', '$this->data')";
        $conexao->query($query);
    }

}

?>