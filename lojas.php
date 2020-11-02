<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Lojas-Full Stack Eletro</title>
    <link rel="stylesheet" href="./css/estilo.css">
    <script src="js/funcoes.js"></script>
</head>

<body>
    <!-- MENU -->
    <?php
        include('menu.html');
    ?>

    <h1>Nossas lojas</h1>
    <hr>
    <br>
    <section class="unidades">
        <div class="lojas">
            <h3>Rio de Janeiro</h3>
            <p>Avenida Presidente Vargas, 5000</p>
            <p>10 &ordm; andar</p>
            <p>Centro</p>
            <p>(21) 3333-3333</p>
        </div>
        <div class="lojas">
            <h3>São Paulo</h3>
            <p>Avenida Paulista, 985</p>
            <p>3 &ordm; andar</p>
            <p>Jardins</p>
            <p>(11) 4444-4444</p>
        </div>
        <div class="lojas">
            <h3>Santa Catarina</h3>
            <p>Rua Major &Aacute;vila, 370</p>
            <p>Vila Mariana</p>
            <p>(41) 5555-5555</p>
            <br>
        </div>
    </section>
    <br><br><br><br><br><br><br><br>

    <footer id="rodape">
        <p id="formas_pagamento">Formas de pagamento</p>
        <img src="./imagens/formas-pagamento.jpeg" alt="Formas de pagamento">
        <p class="assinatura">&copy; Recode Pro</p>
    </footer>
</body>

</html>