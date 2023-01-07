
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Master Pekerja</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
			<a href="javascript:void();" title="Grid"><i class="nav-icon fas fa-th-large"></i></a>&nbsp;&nbsp;
			<a href="javascript:void();" title="List"><i class="nav-icon far fa-list-alt"></i></a>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
			<div class="padding7">
			    <div class="row">
				  <a href="javascript:void()" title="Create New" onclick="tambah();"><button type="button" class="btn btn-default marginkanan2 bordergray"><i class="fa fa-plus"></i></button></a>
				  <a href="javascript:void()" onclick="preview('<?php echo base_url();?>admin')" title="Preview"><button type="button" class="btn btn-default marginkanan2 bordergray"><i class="fa fa-tv"></i></button></a>
				  <a href="javascript:void()" onclick="printout('<?php echo base_url();?>admin')" title="Print Out"><button type="button" class="btn btn-default marginkanan2 bordergray"><i class="fa fa-print"></i></button></a>
				  <a href="javascript:void()" onclick="exporttoxls('<?php echo base_url();?>admin')" title="Export to Excel" ><button type="button" class="btn btn-default marginkanan2 bordergray"><i class="fa fa-table"></i></button></a>
			    </div>			
			</div>
		<div id="grid"><br></div>	
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<script src="<?php echo base_url();?>dist/js/<?php echo $release;?>/jsondatagridx.js"></script>
	<script src="<?php echo base_url();?>dist/js/<?php echo $release;?>/masterpekerja.js"></script>
	<script>
	$(document).ready(function() {
		loadgrid('<?php echo base_url();?>');
	} );
	</script>