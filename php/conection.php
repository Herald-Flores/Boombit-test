<?php
    function conectar(){
        $servername = "localhost";
        $database = "evento";
        $username = "root";
        $password = "hd070695";
        $con = new mysqli($servername, $username, $password, $database)or die ('Ha fallado la conexión: '.mysql_error());
       
        return $con;
    }
?>