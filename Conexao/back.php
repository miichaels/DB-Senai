<?php
require 'usuario.php';
require 'conexao.php';


if (isset($_GET['salvar'])){
$nome =$_GET['nome'];
$usuario =$_GET['usuario'];
$senha =$_GET['senha'];
$dataNascimento =$_GET['dataNascimento'];
$peso =$_GET['peso'];

    $A = new usuario($nome, $usuario, $senha, $peso, $dataNascimento);
    $A->insere($conexao);
    print_r($A);

    echo('até aqui ok');

}
if (isset($_GET['deletar'])){
    $cod=$_GET['id'];
    $A = new usuario("", "", "", 0 , '');
    $A->deletar($conexao,$cod);

    echo('Deletado');
}
if (isset($_GET['mostrar'])){
    $cod=$_GET['id'];
    $A = new usuario("", "", "", 0 , '');
    $A->mostrar($conexao,$cod);
    $A->getNome();
    $A->getUsuario();
    $A->getPeso();
    $A->getDataNascimento();


    //echo('Usuario:');
    //print_r($A);


?>




<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="" href="style.css" media="" />
</head>

<body>


<body>

    <h1>Mostrar dados</h1>

    <form method="GET" action="#">
        <label>Nome</label>    
        <input type="text" name="nome" value="<?php echo $A->getNome();?>">
        <input type="text" name="usuario" value="<?php echo $A->getUsuario();?>" >
        <input type="date" name="dataNascimento" value="<?php echo $A->getDataNascimento();?>">
        <input type="number" name="peso" placeholder="Peso" value="<?php echo $A->getPeso();?>">
        

    </form>

    </body>

    


    <script src="script.js"></script>

</body>

</html>
<?php
}

?>

