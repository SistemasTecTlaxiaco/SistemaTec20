<?php include 'header.php';


?>

    <!-- Inicializamos -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../plugins/select2/select2.min.css">
    <!-- continua -->
    <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include 'main_sidebar.php';?>

        <!-- Encabezado -->
       <?php include 'top_nav.php';?>      <!-- /fin encabezado -->
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

        <!-- contenido de pagina -->
        <div class="right_col" role="main">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class = "x-panel">

            </div>

        </div><!--termina-->
 </div>


                 <div class="panel-heading">


        </div>
 
        <div class="box-header">
                  <h3 class="box-title"> REGISTRAR DOCENTE </h3>

                </div><!-- /.box-header -->
                <a class="btn btn-warning btn-print" href="docente.php"    style="height:25%; width:15%; font-size: 12px " role="button">Regresar</a>
                









                <div class="box-body">
                
         

 
                        
            

          
      




        <form class="form-horizontal" method="post" action="asignar_curso_docente_add.php" enctype='multipart/form-data'>







  
<div class="row">
                    <div class="col-md-3 btn-print">
                      <div class="form-group">
                                                  <label >Docente </label>
                 
                      </div><!-- /.form group -->
                    </div>
                       <div class="col-md-4 btn-print">
                      <div class="form-group">
                          <select class="form-control select2" name="id_docente" required>
                            
  <?php

    $queryc=mysqli_query($con,"select * from  usuario where tipo='docente'  ")or die(mysqli_error());
    while($rowc=mysqli_fetch_array($queryc)){
  ?>
              <option value="<?php echo $rowc['id'];?>"><?php echo $rowc['nombre'].'  '.$rowc['apellido'];?></option>
              <?php }?>
            </select>
        </div>
      </div>
             <div class="col-md-4 btn-print">
  
      </div>
      </div>


<div class="row">
      <div class="col-md-3 btn-print">
        <div class="form-group">
                                    <label >Curso </label>
   
        </div>
      </div>
         <div class="col-md-4 btn-print">
        <div class="form-group">
            <select class="form-control select2" name="id_curso" required>
              
              <?php

$queryc=mysqli_query($con,"select * from curso   ")or die(mysqli_error());
  while($rowc=mysqli_fetch_array($queryc)){
  ?>
              <option value="<?php echo $rowc['id_curso'];?>"><?php echo $rowc['nombre_curso'];?></option>
              <?php }?>
            </select>
        </div>
      </div>
             <div class="col-md-4 btn-print">
  
      </div>
      </div>   



               <div class="row">
      <div class="col-md-3 btn-print">
        <div class="form-group">
                                    <label >Temporada </label>
   
        </div>
      </div>
         <div class="col-md-4 btn-print">
        <div class="form-group">
            <select class="form-control select2" name="id_temporada" required>
              
<?php

              

    $queryc=mysqli_query($con,"select * from temporada   ")or die(mysqli_error());
    while($rowc=mysqli_fetch_array($queryc)){
      ?>
    <option value="<?php echo $rowc['id_temporada'];?>"><?php echo $rowc['nombre_temporada'].' - '.$rowc['anio'] ;?></option>
<?php }?>
          </select>
        </div>
        </div>
        <div class="col-md-4 btn-print">

    </div>
    </div>   
 
<button type="submit" class="btn btn-primary">Guardar cambios</button>


<div class="modal-footer">


</div>
</form>

</div>

</div>

</div>

</div>

</div>
</div>
</div>
</div>

<footer>
<div class="pull-right">
Sistema de Examen online <a href="#"></a>
</div>
<div class="clearfix"></div>
</footer>
</div>
</div>