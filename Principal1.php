<?php
include_once 'registro.php';
$objeto = new Conexion();
$conexion = $objeto->Conectar();

$consulta = "SELECT * FROM movimientos";
$resultado = $conexion->prepare($consulta);
$resultado->execute();
$usuarios=$resultado->fetchAll(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
     
    <title>FinanzaApp</title>
    
      
   
    <link rel="stylesheet" href="./css/estilo.css">
    
    <link rel="stylesheet" href="./css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="./css/buttons.dataTables.min.css">
    <link rel="stylesheet" href="./css/searchBuilder.dataTables.min.css">
    <link rel="stylesheet" href="./css/dataTables.dateTime.min.css">
    

    




    
      
    
  </head>
    
  <body> 
  <nav class="navbar1">
        <div class="logo"><img src="./Imagenes/Diseño_sin_título-removebg-preview.png" alt="logo" width="150px"></div>
        
        <div class="regis"><script src="./js/redirection.js"></script></div>
    </nav>
    
    <section class="movimiento1">
        <div class="movimiento__titulo1">
          <h2 style="margin: -10px">Movimiento</h2>
        </div>
        <div class="movimiento__input1">          
               <button type="button" class="movimiento_ingreso1" onclick="redireccioningreso()"> + Ingreso</button >
               <button type="button" class="movimiento_gasto1" onclick="redirecciongasto()"> - Gasto</button>
               
        </div>
       
    </section>
    
    
    <!--Ejemplo tabla con DataTables-->
    <div class="container" overflow-x: unset; style="width:100%">
   
        <div class="row" overflow-x: unset; style="width:100%; margin-left :-13% ">
                <div class="col-lg-12" style="width:72%">
                
                    <div class="table-responsive" overflow-x: unset; style="width:135%;margin-left :20%" >   
                         
                    <table id="example" class="table table-striped nowrap" overflow-x: unset; style="width:98.6%; ">
                        
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Tipo</th>
                                <th>Concepto</th>                 
                                <th>Cantidad</th>
                                <th>Categoria</th>
                                <th>Subcategoria</th>
                                <th>Fecha de ingreso</th>
                              </tr>
                        </thead>
                        
            
              <tbody>
              <?php
              foreach ($usuarios as $usuarios) {                
              ?>
                  <tr>
                    <td><?php echo $usuarios['ID']?></td>
                    <td><?php echo $usuarios['Tipo']?></td>
                    <td><?php echo $usuarios['Concepto'] ?></td>                 
                    <td><?php echo '$'. $usuarios['Cantidad'] ?></td>
                    <td><?php echo $usuarios['Categoria']?></td>
                    <td><?php echo $usuarios['Subcategoria'] ?></td>
                    <td><?php echo $usuarios['Fecha_ingreso'] ?></td>
                  </tr>
                  <?php 
                   }
                 ?> 
              </tbody>
                  
                       </table>                  
                    </div>
                </div>
        </div>  
    </div>    
     
    
    
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/searchbuilder/1.4.0/js/dataTables.searchBuilder.min.js"></script>
    <script src="https://cdn.datatables.net/datetime/1.2.0/js/dataTables.dateTime.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.2/js/buttons.print.min.js"></script>
    <script>$(document).ready(function() {
    $('#example').DataTable( {
      language: {
                "lengthMenu": "Mostrar _MENU_ registros",
                "zeroRecords": "No se encontraron resultados",
                "info": "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                "infoEmpty": "Mostrando registros del 0 al 0 de un total de 0 registros",
                "infoFiltered": "(filtrado de un total de _MAX_ registros)",
                "Custom Search Builder": "Busqueda personalizada",
                "Print": "imprimir",
                "sSearch": "Buscar:",
                "equal": "igual",
                "oPaginate": {
                    "sFirst": "Primero",
                    "sLast":"Último",
                    "sNext":"Siguiente",
                    "sPrevious": "Anterior",
					          
                    
					
			     },
			     "sProcessing":"Procesando...",
            },
        responsive: "true",
        dom: 'QBfrtip',
        buttons: [
          'copy', 'csv','excel','pdf','print'
        ]
    } );
} );</script>

  </body>
</html>
