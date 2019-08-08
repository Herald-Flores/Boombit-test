<?php
    include "conection.php";

    $con=Conectar();//variable que almacena la conexión ala base de datos

    $marca=$_POST["marca"];
    $modelo=$_POST["modelo"];
    $tipo=$_POST["tipo"];
    $placa=$_POST["placa"];
    $asientos=$_POST["asientos"];
    $nombres=$_POST["nombres"];
    $apellidos=$_POST["apellidos"];
    $cedula=$_POST["cedula"];
    $correo=$_POST["correo"];
    $acompaniantes=$_POST["acompaniantes"];

    $mysqli = new mysqli("localhost","root", "hd070695","evento");
    if ($mysqli->connect_errno) {
        echo "Falló la conexión con MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    }
    $vehiculoid;
    
    $query="INSERT INTO vehiculo (marca, modelo,tipo,placa,asientos) VALUES ('".$marca."', '".$modelo."','".$tipo."','".$placa."','".$asientos."')";
    $mysqli->query($query);

    $id=$mysqli->insert_id;
    
    $query2="INSERT INTO conductor (nombres, apellidos,cedula,correo,vehiculo_idvehiculo) VALUES ('".$nombres."', '".$apellidos."','".$cedula."','".$correo."','".$id."')";
    $mysqli->query($query2);
    $fecha = date("Y-m-d H:i:s");

    $query3="INSERT INTO inscripcion (created_at, cant_pasajeros,vehiculo_idvehiculo) VALUES ('".$fecha."', '".$acompaniantes."','".$id."')";
    $mysqli->query($query3);

    $codigos = array();
    $max_num =$acompaniantes;

    for ($x=0;$x<$max_num;$x++) {
        $num_aleatorio = rand(1,100);
        $anio=date("Y");
        $aleatorio=$anio.$id.$num_aleatorio;
        array_push($codigos,$aleatorio);
    }
    for ($x=0;$x<count($codigos);$x++){
        $query4="INSERT INTO personaxauto (vehiculo_idvehiculo,codigoingreso) VALUES ('".$id."',$codigos[$x])";
        $mysqli->query($query4);
    }

?>