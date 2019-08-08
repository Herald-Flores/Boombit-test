<?php
    include "conection.php";

    $con=Conectar();//variable que almacena la conexión ala base de datos

    $mysqli = new mysqli("localhost","root", "hd070695","evento");

    $sql = "SELECT * FROM vehiculo INNER JOIN conductor ON vehiculo.id=conductor.vehiculo_idvehiculo";
    $resultado = $mysqli->query($sql);
    
    echo($resultado);
?>