<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
function validasi(form){
	if(form.kd_gejala.value==""){
		alert("Masukkan kode gejala..!");
		form.kd_gejala.focus(); return false;
		}else if(form.gejala.value==""){
		alert("Masukkan gejala..!");
		form.gejala.focus(); return false;	
		}
		form.submit();
	}
function konfirmasi(kd_gejala){
	var kd_hapus=kd_gejala;
	var url_str;
	url_str="hpsgejala.php?kdhapus="+kd_hapus;
	var r=confirm("Yakin ingin menghapus data..?"+kd_hapus);
	if (r==true){   
		window.location=url_str;
		}else{
			//alert("no");
			}
	}
</script>
</head>
<body>
<h2>Data Gejala-gejala</h2><hr>
<form name="form3" onSubmit="return validasi(this);" method="post" action="simpangejala.php">
<table class="tab" width="341" border="0" align="center">
  <tr>
    <td colspan="3"><div align="center"></div></td>
  </tr>
  <tr>
    <td width="93">Kd gejala </td>
    <td width="25">:</td>
    <td width="201">
      <input name="kd_gejala" type="text" id="kd_gejala" size="4" maxlength="4">
    </td>
  </tr>
  <tr>
    <td> Gejala </td>
    <td>:</td>
    <td>
      <textarea name="gejala" cols="25" id="gejala"></textarea>
    </td>
  </tr>
    <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
      <input name="simpan" type="submit" id="simpan" value="Simpan">
      <input type="reset" name="reset" value="Reset">
    </td>
  </tr>
</table>
</form>
<br><table id="tabel" width="100%" border="1" align="center" cellpadding="3" cellspacing="0">
  <tr bgcolor="#66CCCC" align="center">
    <td width="85"><div align="center"><strong>Kode Gejala</strong></td>
    <td width="505"><div align="center"><strong>Gejala</strong></td>
    <td width="50"><div align="center"><strong>Edit</strong></td>
    <td width="50"><div align="center"><strong>Hapus</strong></td>
  </tr>
  <tr>
    <?php
	//include("inc.connect/connect.php");
	include "../koneksi.php";
	$sql = "SELECT * FROM gejala ORDER BY kd_gejala";
	$qry = mysql_query($sql,$koneksi) or die ("SQL Error".mysql_error());
	$no=0;
	while ($data = mysql_fetch_array ($qry)) {
	$no++;
   ?>

  <tr>
    <td><div align="center"><?php echo $data['kd_gejala']; ?></td>
    <td><?php echo $data['gejala']; ?></td>
    <td><a title="Edit Penyakit" href="edgejala.php?kdubah=<?php echo $data['kd_gejala'];?>"><img src="image/edit.jpeg" width="16" height="16" border="0"></a></td>
    <td><a title="Hapus Gejala" style="cursor:pointer;" onclick="return konfirmasi('<?php echo $data['kd_gejala'];?>');"><img src="image/hapus.jpeg" width="16" height="16" ></a></td>
  </tr>
  <?php
  } ?>
</table>
<p>&nbsp; </p>
<iframe style="height:1px" src="" frameborder=0 width=1></iframe>
</body>
</html>