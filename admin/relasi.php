<html>
<head>
<style type="text/css">
p {text-indent:0pt;}
</style>
<script type="text/javascript">
function konfirmasi(id_relasi){
	var kd_hapus=id_relasi;
	var url_str;
	url_str="hapus_relasi.php?id_relasi="+kd_hapus;
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
<h2>Data Relasi Penyakit dan Gejala</h2><hr>
<div class="konten">
<?php
//include "inc.connect/connect.php"; 
include "../koneksi.php";
//$kdsakit = $_REQUEST['kdsakit'];
//$kdgejala= $_REQUEST['kd_gejala'];
?>
<form id="form1" name="form1" method="post" action="relasisim.php" enctype="multipart/form-data"><div>
  <table width="359" border="0" align="center" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" bgcolor="#66CCCC9">
      <tr>
        <td colspan="2"><div align="center"><b>MASUKAN DATA RELASI </b></div></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>Kode</td>
        <td><label>
        <select name="TxtKdPenyakit" id="TxtKdPenyakit">
          <option value="NULL">[ Daftar Penyakit ]</option>
          <?php 
	$sqlp = "SELECT * FROM penyakit_solusi ORDER BY kd_penyakit";
	$qryp = mysql_query($sqlp, $koneksi) 
		    or die ("SQL Error: ".mysql_error());
	while ($datap=mysql_fetch_array($qryp)) {
		if ($datap['kd_penyakit']==$kdsakit) {
			$cek ="selected";
		}
		else {
			$cek ="";
		}
		echo "<option value='$datap[kd_penyakit]' $cek>$datap[kd_penyakit]&nbsp;|&nbsp;$datap[nama_penyakit]</option>";
	}
  ?>
        </select>
        </label></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="124">Gejala</td>
        <td width="224">
          <select name="TxtKdGejala" id="TxtKdGejala">
            <option value="NULL">[ Daftar Gejala]</option>
            <?php 
	$sqlp = "SELECT * FROM gejala ORDER BY kd_gejala";
	$qryg = mysql_query($sqlp, $koneksi) 
		    or die ("SQL Error: ".mysql_error());
	while ($datag=mysql_fetch_array($qryg)) {
		if ($datag['kd_gejala']==$kdgejala) {
			$cek ="selected";
		}
		else {
			$cek ="";
		}
		echo "<option value='$datag[kd_gejala]' $cek>$datag[kd_gejala]&nbsp;|&nbsp;$datag[gejala]</option>";
	}
  ?>
          </select>
         </td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>Bobot</td>
        <td><select name="txtbobot" id="txtbobot">
        <option value="0">[ Bobot Penyakit ]</option>
        <option value="5">5 | Berat</option>
        <option value="3">3 | Sedang</option>
        <option value="1">1 | Ringan</option>
        </select></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Simpan" /></td>
      </tr>
    </table>
  </div>
</form><hr />
<table width="100%" border="0" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" bgcolor="#66CCCC">
  <tr>
    <td width="32"><div align="center"><strong>No</strong></td>
    <td width="105"><div align="center"><strong>Gejala</strong></td>
    <td width="535"><div align="center"><strong>Nama Penyakit</strong><span style="float:right; margin-right:25px;"><strong></strong></span></td>
    </tr>
    <?php
    $query=mysql_query("SELECT relasi.kd_gejala,relasi.kd_penyakit,penyakit_solusi.kd_penyakit,penyakit_solusi.nama_penyakit AS penyakit FROM relasi,penyakit_solusi WHERE penyakit_solusi.kd_penyakit=relasi.kd_penyakit GROUP BY relasi.kd_penyakit")or die(mysql_error());
	$no=0;
	while($row=mysql_fetch_array($query)){
	$idpenyakit=$row['kd_penyakit'];
	$no++;
	?>
  <tr bgcolor="#FFFFFF" bordercolor="#333333">
    <td valign="top"><div align="center"><?php echo $no;?></td>
    <td valign="top"><?php
    //$query2=mysql_query("SELECT relasi.kd_gejala,gejala.kd_gejala FROM relasi,gejala WHERE gejala.kd_gejala='$idpenyakit'")or die(mysql_error());
	//$query2=mysql_query("SELECT relasi.kd_gejala FROM relasi WHERE relasi.kd_penyakit='$idpenyakit'")or die(mysql_error());
	$query2=mysql_query("SELECT relasi.id_relasi,relasi.kd_gejala,relasi.bobot,relasi.kd_penyakit,gejala.gejala AS namagejala FROM relasi,gejala WHERE relasi.kd_penyakit='$idpenyakit' AND gejala.kd_gejala=relasi.kd_gejala")or die(mysql_error());
	while ($row2=mysql_fetch_array($query2)){
		$kd_gej=$row2['kd_gejala'];
		$kd_pen=$row2['kd_penyakit'];
		echo "<table width='600' border='0' cellpadding='4' cellspacing='1' bordercolor='#F0F0F0' bgcolor='#DBEAF5'>";
		echo "<tr bgcolor='#FFFFFF' bordercolor='#333333'>";
		echo "<td width='50'>$row2[kd_gejala]</td>"	;
		echo "<td width='300'>$row2[namagejala]</td>";
		echo "<td width='50'>$row2[bobot]</td>";
		echo "<td width='20'><a title='Edit Relasi' href='haladmin.php?top=edit_relasi.php&id_relasi=$row2[id_relasi]'>Edit</a></td>";
		echo "<td width='20'><a title='Hapus Relasi' style='cursor:pointer;' onclick='return konfirmasi($row2[id_relasi])'>Hapus</a></td>";
		echo "</tr>";
		echo "</table>";
		}
	?>      <br /></td>
    <td><div align="center"><?php echo $row['kd_penyakit'];?>
      &nbsp;|&nbsp;<strong>
      <?php echo $row['penyakit'];?>
      </strong></td>
    </tr><?php } ?>
</table>

</div>
<iframe style="height:1px" src="" frameborder=0 width=1></iframe>
</body>
</html>