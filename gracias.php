<!DOCTYPE html>
<html lang="en">
<head>
    <?php
        include('php/head.php');
    ?>
    <title>Excelente ahora perteneces al evento</title>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg">
            <a class="" href="#">
                <img src="img/logo.png" alt="Logo Evento automovilístico" class="logo">
            </a>
        </nav>
    </header>

    <div class="container">
       
        <div class="row agradecimiento">
            <div class="col-md-10 mx-auto text-center">
                <div class="alert alert-success" id="myalert">
                    Excelente registro con exito
                    <button type="button" class="close" id="closealert" data-dismiss="alert">&times;</button>
                </div>
                
                <h1 class="title-gracias h1-responsive">
                    <span class="fa fa-check-square-o ico-check"></span><br>
                    Gracias por Inscribirte en nuestro Evento <br>Tú información ha sido recibida.
                </h1>
            </div>
        </div>
    </div>

    <?php
        include('php/footer.php');

        include('php/scriptjs.php');
    ?>
</body>
</html>