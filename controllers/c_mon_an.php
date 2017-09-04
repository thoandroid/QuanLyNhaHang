<?php
include ("models/m_mon_an.php");
class C_mon_an {

		public function Hien_thi_mon_an()
		{
            /*Model*/
            $m_mon_an = new M_mon_an();
            $m = $m_mon_an->doc_mon_an();
			/*View*/
			include("views/v_mon_an.php");
		}
	}
?>