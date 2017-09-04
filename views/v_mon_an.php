<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Danh sach mon an</title>
   <!-- khai bai css -->
    <link href="css/Default.css" rel="stylesheet" type="text/css"/>

</head>
<body>

    <h3>Mon An</h3>
    <?php
        foreach($m as $mon)
        {
    ?>
    <div class="khung_mon_an">
        <img src="images/hinh_mon_an/<?php  echo $mon->hinh ?>" width="150px" height="120px">
        <h4><?php  echo $mon->ten_mon ?></h4>
        <p><?php  echo $mon->noi_dung_tom_tat ?></p>
        <p>Gia:<?php  echo number_format($mon->don_gia) ?></p>
    </div>

    <?php
        }
    ?>
</body>
</html>