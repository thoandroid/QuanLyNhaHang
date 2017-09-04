<?php
require_once('database.php');
class M_mon_an extends database
{
	
	public function lay_mon_an_cho_gio_hang($chuoi)
    {
    	$query="Select * from mon_an where ma_mon in($chuoi)";
		$this->setQuery($query);
		return $this->loadAllRows();
	}

	public function tim_mon_an($gtTim)
	{
		$sql="select * from mon_an  where ten_mon like '%$gtTim%'";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	
	public function doc_mon_an($vt=-1,$limit=-1)
	{
		$sql="select * from mon_an ";
		if($vt>=0 && $limit>0)
			$sql.=" limit $vt,$limit";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	public function doc_chi_tiet_mon_an($ma_mon)
	{
		$sql="select * from mon_an where ma_mon=?";
		$this->setQuery($sql);
		return $this->loadRow(array($ma_mon));	
	}
	public function doc_mon_an_theo_loai($ma_loai,$ma_mon,$vt=-1,$limit=-1)
	{
		$sql="select * from mon_an where ma_loai=? and ma_mon!=?";
		
		if($vt>=0 && $limit>0)
			$sql.=" limit $vt,$limit";
			
		$this->setQuery($sql);
		return $this->loadAllRows(array($ma_loai,$ma_mon));
	}
	
	
	public function doc_mon_an_trong_ngay($vt=-1,$limit=-1)
	{
		$sql="select * from mon_an where trong_ngay=1";
		if($vt>=0 && $limit>0)
			$sql.=" limit $vt,$limit";
		$this->setQuery($sql);
		return $this->loadAllRows();
	}
	public function doc_mon_an_phuc_vu_nhieu_nhat()
	{
		 
		$sql="select ten_mon,m.ma_mon,sum(so_luong) as tong_so_luong,(sum(so_luong)*ct.don_gia) as thanh_tien ";
		$sql.="from chi_tiet_hoa_don ct inner join mon_an m on ct.ma_mon=m.ma_mon ";
		$sql.="where mon_thuc_don=1 group by ma_mon having sum(so_luong)= ";
		$sql.="(select sum(so_luong) as tong_so_luong from chi_tiet_hoa_don where mon_thuc_don=1 ";
		$sql.="group by ma_mon order by tong_so_luong DESC limit 0,1)";
		$this->setQuery($sql);
		return $this->loadAllRows();
	
	}
	
	public function them_mon_an($ma_loai, $ten_mon, $noi_dung_tom_tat, $noi_dung_chi_tiet, $don_gia, $don_gia_khuyen_mai, $khuyen_mai, $hinh, $ngay_cap_nhat, $dvt, $trong_ngay)
	{
		$sql="insert into mon_an values(?,?,?,?,?,?,?,?,?,?,?,?)";
		$this->setQuery($sql);
		$this->execute(array("NULL",$ma_loai, $ten_mon, $noi_dung_tom_tat, $noi_dung_chi_tiet, $don_gia,$don_gia_khuyen_mai, $khuyen_mai, $hinh, $ngay_cap_nhat, $dvt, $trong_ngay));
	}
	public function sua_mon_an($ma_mon,$ma_loai, $ten_mon, $noi_dung_tom_tat, $noi_dung_chi_tiet, $don_gia, $don_gia_khuyen_mai, $khuyen_mai, $hinh, $ngay_cap_nhat, $dvt, $trong_ngay)
	{
		$sql="update mon_an set ma_loai=?, ten_mon=?, noi_dung_tom_tat=?, noi_dung_chi_tiet=?, don_gia=?, don_gia_khuyen_mai=?, khuyen_mai=?, hinh=?, ngay_cap_nhat=?, dvt=?, trong_ngay=? where ma_mon=?";
		$this->setQuery($sql);
		$this->execute(array($ma_loai, $ten_mon, $noi_dung_tom_tat, $noi_dung_chi_tiet, $don_gia, $don_gia_khuyen_mai, $khuyen_mai, $hinh, $ngay_cap_nhat, $dvt, $trong_ngay,$ma_mon));
	}
	public function xoa_mon_an($ma_mon)
	{
		$sql="delete from mon_an where ma_mon=?";
		$this->setQuery($sql);
		$this->execute(array($ma_mon));
	}
}
/*$test= new M_mon_an;
echo count ($test->doc_mon_an());*/
//echo "<pre>";
//print_r($kq);
?>