
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
	<?php $CI =& get_instance(); ?>
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">PEMASUKAN KAPAL</h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Form Iuran</h3>
              </div>
			  <form class="form-horizontal" name="form" id="form">
              <!-- /.card-header -->
              <div class="card-body">
                <strong><i class="far fa-calendar-alt mr-1"></i> Tanggal</strong>
				<div class="col-sm-6 mepetkiri">
				  <div class="form-group">
					<input type="text" class="form-control" name="tanggal" id="tanggal" onkeypress="if(event.keyCode==13){ document.form.nama.focus(); }" placeholder="Tanggal">
				  </div>
				</div>

                <strong><i class="fas fa-ship mr-1"></i> Nama Kapal</strong>
				<div class="col-sm-12 mepetkiri">
				  <div class="form-group input-group">
					<input type="text" class="form-control" name="nama" id="nama" onkeypress="if(event.keyCode==13){ document.form.asal.focus(); }" placeholder="Nama Kapal">
					<span class="input-group-append">
						<button type="button" class="btn btn-default btn-flat">Cari</button>
					</span>
				  </div>
				</div>
					
                <strong><i class="fas fa-user-circle mr-1"></i> Pemilik</strong>
				<div class="col-sm-12 mepetkiri">
				  <div class="form-group">
					<input type="text" class="form-control" name="pemilik" id="pemilik" onkeypress="if(event.keyCode==13){ document.form.omset.focus(); }" placeholder="Pemilik">
				  </div>
				</div>
				
                <strong><i class="far fa-file-alt mr-1"></i> Omset</strong>
				<div class="col-sm-6 mepetkiri">
				  <div class="form-group">
					<input type="text" class="form-control" name="omset" id="omset" onkeypress="if(event.keyCode==13){ document.form.iuran.focus(); }" placeholder="Omset">
				  </div>
				</div>

                <strong><i class="far fa-file-alt mr-1"></i> Iuran</strong>
				<div class="col-sm-6 mepetkiri">
				  <div class="form-group">
					<?php $i=0; foreach ($tarif as $rs) { ?>
					<input type="text" class="form-control" name="iuran" id="iuran" onkeypress="if(event.keyCode==13){ document.form.petugas.focus(); }" value="<?php echo $rs->iuran;?>" placeholder="Iuran">
					<?php }?>
				  </div>
				</div>

                <strong><i class="fas fa-user-edit mr-1"></i> Petugas</strong>
				<div class="col-sm-12 mepetkiri">
				  <div class="form-group">
                  <select class="form-control select2 select2-danger" name="petugas" id="petugas" data-dropdown-css-class="select2-danger" style="width: 100%;">
					<?php $i=0; foreach ($petugas as $rs) { ?>
					<option value="<?php echo $rs->nama;?>"><?php echo $rs->nama;?></option>
					<?php }?>
                  </select>
				  </div>
				</div>
				
                <a href="javascript:void()" onclick="simpan('<?php echo base_url();?>')" class="btn btn-primary btn-block"><b>Simpan</b></a>
              </div>
              <!-- /.card-body -->
			  </form>
            </div>
            <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Data Iuran Kapal</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <button type="button" class="btn btn-default btn-sm checkbox-toggle"><i class="far fa-square"></i>
                </button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default btn-sm"><i class="far fa-trash-alt"></i></button>
                  <button type="button" class="btn btn-default btn-sm"><i class="fas fa-reply"></i></button>
                  <button type="button" class="btn btn-default btn-sm"><i class="fas fa-share"></i></button>
                </div>
                <!-- /.btn-group -->
              </div>
              <div id="grid" class="padding10">
				<br>			  
              </div>
              <!-- /.mail-box-messages -->
            </div>
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
	<link rel="stylesheet" href="<?php echo base_url();?>dist/css/jquery-ui.css">
	<script src="<?php echo base_url();?>dist/js/jquery-1.12.4.js"></script>
	<script src="<?php echo base_url();?>dist/js/jquery-ui.js"></script> 
	<script src="<?php echo base_url();?>dist/js/<?php echo $release;?>/jsondatagridx.js"></script>
	<script src="<?php echo base_url();?>dist/js/<?php echo $release;?>/pemasukankapal.js"></script>
<script>
	$(document).ready(function() {
		loadgrid('<?php echo base_url();?>');
	} );
	$("#nama").autocomplete({
		source:'<?php echo base_url(); ?>pemasukan/kapalauto',
		select:function(event, ui) {
			theForm=document.form;
			$('#pemilik').val(ui.item.pemilik);
		}
	});	
	function autojam(){
		var ut=new Date();
		var h,m,s;
		var time="";
		thn=ut.getFullYear();
		bln=ut.getMonth()+1;
		tgl=ut.getDate();
		h=ut.getHours();
		m=ut.getMinutes();
		s=ut.getSeconds();
		if(tgl<=9) tgl="0"+tgl;
		if(bln<=9) bln="0"+bln;
		if(s<=9) s="0"+s;
		if(m<=9) m="0"+m;
		if(h<=9) h="0"+h;
		time+=tgl+"/"+bln+"/"+thn+" "+h+":"+m+":"+s;
		document.getElementById('tanggal').value=time;
		tick=setTimeout("autojam()",1000);    
	}
autojam();
</script>