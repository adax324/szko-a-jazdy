<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date"/>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Szkoła jazdy | Lista Kursantów</title>
  <%@include file="../../dynamic/baseCss.jspf"%>
  <!-- DataTables -->
  <link rel="stylesheet" href='<c:url value="/resources/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css"/>'>
  <link rel="stylesheet" href='<c:url value="/resources/plugins/datatables-responsive/css/responsive.bootstrap4.min.css"/>'>
  <link rel="stylesheet" href='<c:url value="/resources/plugins/datatables-buttons/css/buttons.bootstrap4.min.css" />'>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <%@include file="../../dynamic/Sidebar.jspf"%>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Kadra</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Strona główna</a></li>
              <li class="breadcrumb-item active">Kadra</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            
            <!-- /.card -->

            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Lista pracowników </h3>
              </div>
              <!-- /.card-header -->
              
              <div class="card-body">
                <div class="row">
                  <div class = " mb-2 col-sm-2 col-md-2">                    
                    <a href='<c:url value="/employees/addEmployee"/>' class="btn btn-success">+ Dodaj pracownika</a>
                  </div>
                </div>
               
               
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Imię</th>
                    <th>Nazwisko</th>
                    <th>Grupa</th>
                    <th>Oddział</th>
                    <th>Edycja</th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>Jan</td>
                    <td>Nowak</td>
                    <td>Instruktor</td>                  
                    <td>WRO-1</td>
                    <td><a href="#" class="btn btn-primary">Edytuj</a></td>
                  </tr>
                  <tr>
                    <td>Anna</td>
                    <td>Nowak</td>
                    <td>Wykładowca</td>                  
                    <td>WRO-1</td>
                    <td><a href="#" class="btn btn-primary">Edytuj</a></td>
                  </tr>
                  <tr>
                    <td>Paweł</td>
                    <td>Nowak</td>
                    <td>Właściciel</td>                  
                    <td>WRO-1</td>
                    <td><a href="#" class="btn btn-primary">Edytuj</a></td>
                  </tr>                       
                  </tbody>
                  <tfoot>
                    <tr>
                      <th>Imię</th>
                      <th>Nazwisko</th>
                      <th>Grupa</th>
                      <th>Oddział</th>
                      <th>Edycja</th>
                    </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.1.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src='<c:url value="/resources/plugins/jquery/jquery.min.js"/>'></script>
<!-- Bootstrap 4 -->
<script src='<c:url value="/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"/>'></script>
<!-- jQuery UI -->
<script src='<c:url value="/resources/plugins/jquery-ui/jquery-ui.min.js"/>'></script>
<!-- AdminLTE App -->
<script src='<c:url value="/resources/dist/js/adminlte.min.js"/>'></script>

<!-- DataTables  & Plugins -->
<script src='<c:url value="/resources/plugins/datatables/jquery.dataTables.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-responsive/js/dataTables.responsive.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-buttons/js/dataTables.buttons.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/jszip/jszip.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/pdfmake/pdfmake.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/pdfmake/vfs_fonts.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-buttons/js/buttons.html5.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-buttons/js/buttons.print.min.js"/>'></script>
<script src='<c:url value="/resources/plugins/datatables-buttons/js/buttons.colVis.min.js"/>'></script>

<!-- Page specific script -->
<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
    }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
