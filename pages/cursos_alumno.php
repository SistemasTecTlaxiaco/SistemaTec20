
<?php include 'header.php';


?>

    <!-- Empezamos con la fuente -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- Finaliza. -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include 'main_sidebar.php';?>

        <!-- navegacion superior -->
       <?php include 'top_nav.php';?>      <!-- /fin de navegacion -->
       <style>
label{

color: black;
}
li {
  color: white;
}
ul {
  color: white;
}
#buscar{
  text-align: right;
}
  </style>
         <?php            
          //Añadimos un condicionar de id_temporada (recibiendo el dato de label)
                    if(isset($_REQUEST['id_temporada'])) {
                      $id_temporada=$_REQUEST['id_temporada'];
                    } else{
                      $id_temporada=$_POST['id_temporada'];
                    }
        ?>

<div class="right_col" role="main">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class = "x-panel">
            </div>
        </div>
      </div>
        <div class="panel-heading">
        </div>
 
                <div class="box-header">
                  <h3 class="box-title"> </h3>
                </div><!-- encabezado de caja -->
                  <a class="btn btn-danger btn-print" href="<?php  echo "temporada_alumno.php";?>"  role="button">Retroceder</a>
                  <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Impresión</a>
            
                <div class="box-body">
                
                  <div class="box-header">
                    <h3 class="box-title"> LISTA CURSOS ALUMNO</h3>
                  </div><!-- ecabezado de caja -->
              
                <div class="box-body">
                
                  <table id="example2" class="table table-bordered table-striped">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Nombre curso</th>
                        <th>Descripcion Curso</th>
                        <th>Alumno</th>
 
           <th class="btn-print"> Accion </th>
                      </tr>
                    </thead>
                    <tbody>



 <?php
$session_id=$_SESSION['id'];
    $query=mysqli_query($con,"select * from curso AS c INNER JOIN matricular_curso_alumno AS a ON c.id_curso = a.id_curso INNER JOIN usuario AS u ON u.id = a.id_usuario where id='$session_id' and c.id_temporada='$id_temporada' ")or die(mysqli_error());
    $i=0;
    while($row=mysqli_fetch_array($query)){

        $id_curso=$row['id_curso'];
    $i++;
?>
                      <tr >

<td><?php echo $i;?></td>


  
<td><?php echo $row['nombre_curso'];?></td>
  <td><?php echo $row['descripcion_curso'];?></td>
  <td><?php echo $row['nombre'].' '.$row['apellido'];?></td>

                          <td>
                                 <?php
                   
                    
                      ?>

      

                    