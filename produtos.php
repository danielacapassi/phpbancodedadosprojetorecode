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
?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="./css/estilo.css">
    <script src="./js/funcoes.js"></script>
    <title>Produtos-Full Stack Eletro</title>
</head>

<body>

    <!-- MENU -->
    <?php
        include_once('menu.html');
    ?>


    <header>
        <h1>Produtos</h1>
    </header>
    <hr>
    <main class="container">

        <section class="categorias">
            <h3>Categorias</h3>
            <ul>
                <li onclick="exibir_todas()">Todas (12)</li>
                <li onclick="exibir_categoria('geladeira')">Geladeiras (3)</li>
                <li onclick="exibir_categoria('fogao')">Fogões (2)</li>
                <li onclick="exibir_categoria('lavalouca')">Lava-louças(2)</li>
                <li onclick="exibir_categoria('lavadoraderoupas')">Lavadora de roupas(2)</li>
                <li onclick="exibir_categoria('microondas')">Microondas(3)</li>
            </ul>
        </section>


               

        <section class="produtos">
        
        <?php

        $sql = "select * from produtos";
        $result = $conn->query($sql);

        if($result->num_rows > 0){
        while($rows = $result->fetch_assoc()){
         
          
        ?>

            <div class="box_produtos" id="<?php echo $rows["categoria"]; ?>" style="display:block";>
                <div class="box_imagens">
                    <img src="<?php echo $rows["imagem"];?>" width="100px" onclick="destaque(this)">
                </div>
                <p class="descricao"><?php echo $rows["descricao"]; ?></p>
                <hr>
                <p class="descricao2"><?php echo $rows["preco"]; ?></p>
                <p class="preco"><?php echo $rows["precofinal"]; ?></p>
            </div>

            <?php
             
            }
           }  else {
           echo"Nenhum produto cadastrado!";
            }

            ?>

        </section>
    </main>
    <br>
    
    <footer id="rodape">
        <p id="formas_pagamento">Formas de pagamento</p>
        <img src="./imagens/formas-pagamento.jpeg" alt="Formas de pagamento">
        <p class="assinatura">&copy; Recode Pro</p>
    </footer>
</body>

</html>