<!DOCTYPE html>
<html lang="en">
<head>
    <?php
       include('php/head.php');
    ?>
    <title>Listado</title>
</head>
<body>
    <div class="container">
        <div class="col-lg-10 mx-auto" id="tabla">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th class="text-center">Vehiculo</th>
                    <th class="text-center">marca</th>
                    <th class="text-center">modelo</th>
                    <th class="text-center">placa</th>
                    <th class="text-center">conductor</th>
                </tr>
            </thead>
            <tbody>
                <?php $n=0; while($row = mysqli_fetch_array($resultado)){ $n++;?>
                    <tr>
                        <td class="text-center"><?php echo $n; ?></td>
                        <td class="text-center"><?php echo $row["marca"]; ?></td>
                        <td class="text-center"><?php echo $row["modelo"]; ?></td>
                        <td class="text-center"><?php echo $row["placa"]; ?></td>
                        <td class="text-center"><?php echo $row["conductor"]; ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
        </div>
    </div>


    <?php
        include('php/footer.php');

        include('php/scriptjs.php');
    ?>
</body>
</html>