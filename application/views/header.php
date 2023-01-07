<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>PAGUYUBAN</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/plugins/summernote/summernote-bs4.css">
  <!-- jQuery -->
  <script src="<?php echo base_url();?>dist/plugins/jquery/jquery.min.js"></script>
  <!-- jQuery UI 1.11.4 -->
  <script src="<?php echo base_url();?>dist/plugins/jquery-ui/jquery-ui.min.js"></script>
  <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
  <link rel="stylesheet" href="<?php echo base_url();?>dist/css/style.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>logout" role="button">
          <i class="fas fa-power-off"></i> Logout
        </a>
      </li>
	</ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<?php echo base_url();?>" class="brand-link">
      <img src="<?php echo base_url();?>dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">PAGUYUBAN</span>
    </a>
	
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Master Data
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url();?>master/tarif" class="nav-link <?php if($menu=="mastertarif"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Tarif Iuran</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>master/kapal" class="nav-link <?php if($menu=="masterkapal"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Nama Kapal</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>master/petugas" class="nav-link <?php if($menu=="masterpetugas"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Petugas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>master/pekerja" class="nav-link <?php if($menu=="masterpekerja"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pekerja</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-reply"></i>
              <p>
                Pemasukan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url();?>pemasukan/kapal" class="nav-link <?php if($menu=="pemasukankapal"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Iuran Kapal</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>pemasukan/umum" class="nav-link <?php if($menu=="pemasukanumum"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Iuran Umum</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>pemasukan/kendaraan" class="nav-link <?php if($menu=="pemasukankendaraan"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Iuran Kendaraan</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-share"></i>
              <p>
                Pengeluaran
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url();?>pengeluaran/umum" class="nav-link <?php if($menu=="pengeluaranumum"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pengeluaran Umum</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>pengeluaran/jasapetugas" class="nav-link <?php if($menu=="pengeluaranjasapetugas"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Jasa Petugas</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tv"></i>
              <p>
                Laporan
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<?php echo base_url();?>laporan/kas" class="nav-link <?php if($menu=="laporankas"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>KAS</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>laporan/pemasukan" class="nav-link <?php if($menu=="laporanpemasukan"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pemasukan</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<?php echo base_url();?>laporan/pengeluaran" class="nav-link <?php if($menu=="laporanpengeluaran"){ echo "active";}?>">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Pengeluaran</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
