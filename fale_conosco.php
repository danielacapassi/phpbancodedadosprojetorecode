<?php
$servidor = "localhost";
$username = "root";
$password = "";
$database = "recode";

// Criando a conexão
$conn = mysqli_connect($servidor, $username, $password, $database);

//Verificando a conexão
if (!$conn){
  die("A conexão ao BD falhou:" . mysqli_connect_error());
}


if(isset($_POST['nome']) && isset($_POST['msg'])){
$nome = $_POST['nome'];
$msg = $_POST['msg'];

$sql = "insert into comentarios(nome, msg) values ('$nome','$msg')";
$result = $conn->query($sql);

}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Fale Conosco-Full Stack Eletro</title>
    <link rel="stylesheet" href="./css/estilo.css">
    <script src="js/funcoes.js"></script>
</head>

<body>
    <!-- MENU -->
    <?php
        include('menu.html');
    ?>

    <header>
        <h1>Fale conosco</h1>
    </header>
    <hr>
    <br>
    <section class="contatos">
        <div class="comunicacao">
            <img src="./imagens/email.jpeg" alt="Logo de email" width="40px">
            <p>contato@fullstackeletro.com</p>
        </div>
        <div class="comunicacao">
            <img src="./imagens/whatsapp.jpeg" alt="Logo de whatsapp" width="50px">
            <p>(11) 99999-9999</p>
        </div>
    </section>
    <br>
    <div class="form" style=text-align:center>
    <form method="post" action="">
    <p>Deixe a sua mensagem:</p><br>
        <label>Nome:</label><br>
        <input type="text" name="nome">
        <br><br>
        <label>Mensagem:</label><br>
        <textarea name="msg"></textarea><br><br>
        <button type="submit" name="submit"style="width:150px">Enviar</button>
    </form>
</div>

    <?php

$sql = "select * from comentarios";
$result = $conn->query($sql);

if($result->num_rows > 0){
while($rows = $result->fetch_assoc()){
    echo"Data: ",$rows['data'], "</br>";
    echo"Nome: ",$rows['nome'], "</br>";
    echo"Mensagem: ",$rows['msg'], "</br>";
    echo"<hr>";
   }
} else {
    echo"Nenhum comentário ainda!";
 }
 ?>
    <br><br><br><br>
    <footer id="rodape">
        <p id="formas_pagamento">Formas de pagamento</p>
        <img src="./imagens/formas-pagamento.jpeg" alt="Formas de pagamento">
        <p class="assinatura">&copy; Recode Pro</p>
    </footer>
</body>

</html>