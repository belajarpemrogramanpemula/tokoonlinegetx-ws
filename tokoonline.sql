# Host: localhost  (Version 5.5.5-10.4.18-MariaDB)
# Date: 2021-10-25 02:15:07
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "cabang"
#

DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `alamat` varchar(255) DEFAULT '',
  `kota` varchar(255) DEFAULT '',
  `propinsi` varchar(255) DEFAULT '',
  `kodepos` varchar(6) DEFAULT '',
  `telp` varchar(20) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "cabang"
#

INSERT INTO `cabang` VALUES (1,'cabang','Semarang Timur','Jl. Pedurungan No. 1xx','Semarang','','','024 1234568','cabang@gmail.com');

#
# Structure for table "carousel"
#

DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idproduk` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT '',
  `thumbnail` varchar(255) DEFAULT '',
  `st` varchar(1) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "carousel"
#

INSERT INTO `carousel` VALUES (1,1,'Promo Samsung Murah','/dist/carousel/1.jpg','1'),(2,2,'Dapatkan Harga Terbaik','/dist/carousel/2.jpg','1'),(3,3,'Shoplink 11 : 11','/dist/carousel/3.jpg','1'),(12,1,'Bulan Penuk Berkah','/dist/carousel/image_picker5309826714810817411.jpg','1'),(13,5,'poooooooo','/dist/carousel/image_picker8434591335363379792.jpg','1');

#
# Structure for table "conter"
#

DROP TABLE IF EXISTS `conter`;
CREATE TABLE `conter` (
  `jual` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "conter"
#

INSERT INTO `conter` VALUES (72);

#
# Structure for table "favorite"
#

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE `favorite` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) DEFAULT '',
  `idproduk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

#
# Data for table "favorite"
#

INSERT INTO `favorite` VALUES (38,'user',2),(39,'user',5);

#
# Structure for table "gambarlain"
#

DROP TABLE IF EXISTS `gambarlain`;
CREATE TABLE `gambarlain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idproduk` bigint(20) DEFAULT NULL,
  `images` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

#
# Data for table "gambarlain"
#

INSERT INTO `gambarlain` VALUES (22,55,'/dist/images/wakanda33phpm7YC6K.jpg'),(23,55,'/dist/images/wakanda33phpksdJi1.jpg'),(24,55,'/dist/images/wakanda33phpCwyIMa.jpg'),(25,56,'/dist/images/esdogerphp1LL6DK.jpg'),(26,57,'/dist/images/BeraslelephpTuDRwO.jpg'),(27,57,'/dist/images/BeraslelephpzTqdY9.jpg'),(28,57,'/dist/images/BeraslelephpGzDo3P.jpg'),(29,58,'/dist/images/anuphpxVtSMs.jpg');

#
# Structure for table "kategori"
#

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES (2,'PC & Laptop'),(3,'Electronic'),(4,'Home Applicare'),(5,'Photography'),(6,'Fashion, Make Up & Beauty Care'),(7,'Toys, Kids & Baby'),(8,'Dapur'),(30,'SEMBAKO'),(31,'perkakas');

#
# Structure for table "pelanggan"
#

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `alamat` varchar(255) DEFAULT '',
  `kota` varchar(255) DEFAULT '',
  `propinsi` varchar(255) DEFAULT '',
  `kodepos` varchar(6) DEFAULT '',
  `telp` varchar(20) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Data for table "pelanggan"
#

INSERT INTO `pelanggan` VALUES (1,'user','Rahman Hidayat','Jl Pemudaxxx','Semarang','Jawa Tengah','','0811223389988','user@gmail.com');

#
# Structure for table "penjualan"
#

DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nota` varchar(255) DEFAULT '',
  `tanggal` datetime DEFAULT NULL,
  `idproduk` int(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT '',
  `harga` double(10,0) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT '',
  `jumlah` int(11) DEFAULT NULL,
  `userid` varchar(100) DEFAULT '',
  `idcabang` int(11) DEFAULT NULL,
  `st` varchar(1) DEFAULT NULL,
  `flag` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

#
# Data for table "penjualan"
#

INSERT INTO `penjualan` VALUES (3,'211024/0071J','2021-10-24 22:37:13',1,'Samsung',290000,'/dist/images/food_1.jpg',1,'user',1,NULL,NULL);

#
# Structure for table "produk"
#

DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idkategori` int(11) DEFAULT NULL,
  `idsubkategori` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT '',
  `subkategori` varchar(255) DEFAULT '',
  `judul` varchar(255) DEFAULT '',
  `deskripsi` text DEFAULT NULL,
  `harga` double(10,0) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT '',
  `st` varchar(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

#
# Data for table "produk"
#

INSERT INTO `produk` VALUES (1,1,1,'Smartphone & Tablet','sub1','Samsung','Pengiriman standart untuk wilayah Jabodetabek KOTA IDR 9.000 menggunakan Truk oscar living /armada Oscar Living ALAMAT KIRIM KABUPATEN KENA CAS +150.000 ( 4-14 hari KERJA ) - silahkan Pilih JNE\r\ntidak bisa atur waktu atau hari\r\nSebelum kirim paginya akan di telpon bagian pengriman kami\r\nsudah termasuk instalasi\r\n\r\ndi schedule/ 2-3 hari kirim tambah biaya 150.000.\r\n\r\nSofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.',290000,'/dist/images/food_1.jpg','1'),(2,1,2,'Smartphone & Tablet','sub2','Sony Ericson','Keunggulan Product : \r\nBahan Oscar\r\nDesain Multifungsi \r\nTidak mudah kotor\r\nFlat bed\r\nKursi malas\r\n\r\nNOTE :\r\nBELI MENYETUJUI KEBIJAKAN PENJUAL\r\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\r\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\r\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\r\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\r\n- PRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\r\n- PACKAGING TYPE : Plastic\r\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\r\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\r\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',150000,'/dist/images/food_2.jpg','1'),(3,1,3,'Smartphone & Tablet','sub3','Asus','Spesifikasi,,\r\nmerk, acer, benq, lg, samsung, hp ( tergantung stock )\r\ndimensi,, layar 16 inchi\r\nkelengkapan,, kabel power + kabel vga',250000,'/dist/images/food_3.jpg','1'),(4,1,1,'Smartphone & Tablet','sub1','Lenovo','Sofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.\r\n\r\nPRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37cm (sudah termasuk 8cm kaki kursi)\r\n\r\nKeunggulan Product :\r\nBahan Oscar ( mudah dibersihkan )\r\nDesain Multifungsi\r\nTidak mudah kotor\r\nFlat bed',145000,'/dist/images/food_4.jpg','1'),(5,2,4,'PC & Laptop','pc 1','PC & Laptop','Sofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.\r\n\r\nPRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37cm (sudah termasuk 8cm kaki kursi)',15000,'/dist/images/food_2.jpg','1'),(6,2,5,'PC & Laptop','pc 2','PC Electronic 2','Deskripsi Sofabed / Sofa bed Oristo Hitam\n\nDeskripsi Sofa Bed Oristo Hitam\nIstana Sofa kini hadir dengan SofaBed kualitas terbaik dan harga sangat terjangkau\n\nHadir dengan warna Hitam, yang akan menambah kesan mewah di dalam rumah anda.\n\nPenggabungan frame yang kokoh dengan busa yang sangat empuk, ditambah kualitas kulit yang terbaik.\n\nDijamin rumah anda akan terkesan mewah dengan membeli sofa ini. Coba bayangkan apa pendapat tetangga dan keluarga anda tentang sofa ini? Betapa mewahnya sofa ini akan menghiasi rumah anda\n\nSilahkan cek yang lain, kami tetap yang TERMURAH tapi BERKUALITAS\n\nPRODUCT SIZE :+- 175 x 55 x 90 CM ( Posisi Sofa )\nPRODUCT SIZE :+- 175 x 110 x 40 CM ( Posisi Flat Bed )',75000,'/dist/images/food_2.jpg','1'),(7,2,4,'PC & Laptop','pc 1','Home Applicare','Deskripsi Sofabed / Sofa bed Oristo Hitam\n\nDeskripsi Sofa Bed Oristo Hitam\nIstana Sofa kini hadir dengan SofaBed kualitas terbaik dan harga sangat terjangkau\n\nHadir dengan warna Hitam, yang akan menambah kesan mewah di dalam rumah anda.\n\nPenggabungan frame yang kokoh dengan busa yang sangat empuk, ditambah kualitas kulit yang terbaik.\n\nDijamin rumah anda akan terkesan mewah dengan membeli sofa ini. Coba bayangkan apa pendapat tetangga dan keluarga anda tentang sofa ini? Betapa mewahnya sofa ini akan menghiasi rumah anda\n\nSilahkan cek yang lain, kami tetap yang TERMURAH tapi BERKUALITAS\n\nPRODUCT SIZE :+- 175 x 55 x 90 CM ( Posisi Sofa )\nPRODUCT SIZE :+- 175 x 110 x 40 CM ( Posisi Flat Bed )',65000,'/dist/images/food_4.jpg','1'),(8,2,5,'PC & Laptop','pc 2','Photography','Deskripsi Sofabed / Sofa bed Oristo Hitam\n\nDeskripsi Sofa Bed Oristo Hitam\nIstana Sofa kini hadir dengan SofaBed kualitas terbaik dan harga sangat terjangkau\n\nHadir dengan warna Hitam, yang akan menambah kesan mewah di dalam rumah anda.\n\nPenggabungan frame yang kokoh dengan busa yang sangat empuk, ditambah kualitas kulit yang terbaik.\n\nDijamin rumah anda akan terkesan mewah dengan membeli sofa ini. Coba bayangkan apa pendapat tetangga dan keluarga anda tentang sofa ini? Betapa mewahnya sofa ini akan menghiasi rumah anda\n\nSilahkan cek yang lain, kami tetap yang TERMURAH tapi BERKUALITAS\n\nPRODUCT SIZE :+- 175 x 55 x 90 CM ( Posisi Sofa )\nPRODUCT SIZE :+- 175 x 110 x 40 CM ( Posisi Flat Bed )',85000,'/dist/images/food_3.jpg','1'),(9,2,6,'PC & Laptop','pc 3','PC Electronic 3','Deskripsi Sofabed / Sofa bed Oristo Hitam\n\nDeskripsi Sofa Bed Oristo Hitam\nIstana Sofa kini hadir dengan SofaBed kualitas terbaik dan harga sangat terjangkau\n\nHadir dengan warna Hitam, yang akan menambah kesan mewah di dalam rumah anda.\n\nPenggabungan frame yang kokoh dengan busa yang sangat empuk, ditambah kualitas kulit yang terbaik.\n\nDijamin rumah anda akan terkesan mewah dengan membeli sofa ini. Coba bayangkan apa pendapat tetangga dan keluarga anda tentang sofa ini? Betapa mewahnya sofa ini akan menghiasi rumah anda\n\nSilahkan cek yang lain, kami tetap yang TERMURAH tapi BERKUALITAS\n\nPRODUCT SIZE :+- 175 x 55 x 90 CM ( Posisi Sofa )\nPRODUCT SIZE :+- 175 x 110 x 40 CM ( Posisi Flat Bed )',45000,'/dist/images/image_picker1020291301446244471.jpg','1'),(10,3,7,'Electronic','el 1','Electronic 1','Deskripsi Sofabed / Sofa bed Oristo Hitam\n\nDeskripsi Sofa Bed Oristo Hitam\nIstana Sofa kini hadir dengan SofaBed kualitas terbaik dan harga sangat terjangkau\n\nHadir dengan warna Hitam, yang akan menambah kesan mewah di dalam rumah anda.\n\nPenggabungan frame yang kokoh dengan busa yang sangat empuk, ditambah kualitas kulit yang terbaik.\n\nDijamin rumah anda akan terkesan mewah dengan membeli sofa ini. Coba bayangkan apa pendapat tetangga dan keluarga anda tentang sofa ini? Betapa mewahnya sofa ini akan menghiasi rumah anda\n\nSilahkan cek yang lain, kami tetap yang TERMURAH tapi BERKUALITAS\n\nPRODUCT SIZE :+- 175 x 55 x 90 CM ( Posisi Sofa )\nPRODUCT SIZE :+- 175 x 110 x 40 CM ( Posisi Flat Bed )',36000,'/dist/images/food_3.jpg','1'),(11,3,8,'Electronic','el 2','Electronic 2','Sofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.\r\n\r\nPRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37cm (sudah termasuk 8cm kaki kursi)\r\n\r\nKeunggulan Product :\r\nBahan Oscar ( mudah dibersihkan )\r\nDesain Multifungsi\r\nTidak mudah kotor\r\nFlat bed',27500,'/dist/images/food_2.jpg','1'),(12,3,7,'Electronic','el 1','Electronic 1','Sofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.\r\n\r\nPRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37cm (sudah termasuk 8cm kaki kursi)',95000,'/dist/images/food_4.jpg','1'),(13,1,1,'Smartphone & Tablet','sub1','xiomi 123','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',250750,'/dist/images/image_picker496026001610118868.jpg','1'),(14,8,9,'Dapur','Piring','Piring Elektronik','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',250000,'/dist/images/image_picker2974856382811829396.jpg','1'),(15,8,10,'Dapur','Wajan','Wajan Digital','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',69000,'/dist/images/image_picker1020291301446244471.jpg','1'),(16,1,1,'Smartphone & Tablet','sub1','redmi','Sofa bed Valencia di rancang multifungsi, dapat difungsikan sebagai sofa dan dapat di adjust menjadi flat bed kapan pun anda membutuhkan. Dengan desain yang sangat simple dapat memberikan kesan mewah pada ruangan anda. Sangat cocok digunakan untuk berkumpul bersama keluarga.\r\n\r\nPRODUCT SIZE :\r\nProduct (sofa) Size : 55 x 175 x 87 CM\r\nFlat Bed Size : 110 x 175 x 37cm (sudah termasuk 8cm kaki kursi)\r\n\r\nKeunggulan Product :\r\nBahan Oscar ( mudah dibersihkan )\r\nDesain Multifungsi\r\nTidak mudah kotor\r\nFlat bed',56000,'/dist/images/food_4.jpg','1'),(46,8,9,'Dapur','Piring','senderan hp z','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',12500,'/dist/images/6f6e9047-e9c8-457f-8992-0ba15fce42373277538818673626947.jpg','1'),(47,8,10,'Dapur','Wajan','ciki','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',1000,'/dist/images/6f6e9047-e9c8-457f-8992-0ba15fce42373277538818673626947.jpg','1'),(55,8,10,'Dapur','Wajan','wakanda 33','Keunggulan Product : \nBahan Oscar\nDesain Multifungsi \nTidak mudah kotor\nFlat bed\nKursi malas\n\nNOTE :\nBELI MENYETUJUI KEBIJAKAN PENJUAL\nTIDAK TERIMA REFUND DANA/ CANCEL SETELAH DIPROSES\n**KEBIJAKAN PENGIRIMAN HARAP DIBACA SEBELUM PEMESANAN**\n-PRODUK HANYA TERSEDIA DI JABODETABEK KOTA, KAB DIKENAKAN ONGKIR 150.000\n-BANDUNG-PURWAKARTA-CILEGON ONGKIR 150.000 PENGIRIMAN 2 MINGGU\n- PRODUCT SIZE :\nProduct (sofa) Size : 55 x 175 x 87 CM\nFlat Bed Size : 110 x 175 x 37 (sudah termasuk 8cm kaki kursi) CM\n- PACKAGING TYPE : Plastic\n- Ongkir Luar kota akan di bebankan sepenuh nya kepada pembeli dengan bobot Volumetrik dan harga dari ekpedisi yang di tunjuk.\n- Warna asli product bisa saja berbeda dari foto, hal ini dikarenakan pencahayaan, whitebalance maupun setting monitor anda.\n- Hak cipta Gambar dimiliki oleh Oscar Living Photography team dan dilarang memperbanyak gambar tanpa Ijin tertulis dari Oscar Living Photography Team.',23500,'/dist/images/wakanda33phpGGrQJS.jpg','1'),(56,3,7,'Electronic','el 1','es doger','esss',2500,'/dist/images/esdogerphpB9OiWz.jpg','1'),(57,30,20,'SEMBAKO','Beras','Beras lele','Beras wangi,putih,butiran besar kemasan 25 Kg',25000,'/dist/images/BeraslelephpioIAau.jpg','1'),(77,31,21,'perkakas','sub perkakas','jgjslks','ddd',0,'/dist/images/jgjslks.20211025012050.jpg','1');

#
# Structure for table "signin"
#

DROP TABLE IF EXISTS `signin`;
CREATE TABLE `signin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userid` varchar(100) DEFAULT '',
  `pass` varchar(100) DEFAULT '',
  `nama` varchar(255) DEFAULT '',
  `level` varchar(1) DEFAULT '',
  `email` varchar(255) DEFAULT '',
  `foto` varchar(255) DEFAULT '',
  `token` varchar(255) DEFAULT '',
  `token2` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "signin"
#

INSERT INTO `signin` VALUES (1,'sa','sa','Adminitrator','1','sa@gmail.com','','',''),(2,'cabang','cabang','Semarang Timur','2','cabang@gmail.com','','',''),(4,'user','user','Rahman Hidayat','3','user@gmail.com','','','');

#
# Structure for table "stokcabang"
#

DROP TABLE IF EXISTS `stokcabang`;
CREATE TABLE `stokcabang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idcabang` int(11) DEFAULT NULL,
  `idproduk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

#
# Data for table "stokcabang"
#

INSERT INTO `stokcabang` VALUES (2,2,1),(4,2,2),(5,1,3),(6,2,3),(8,2,4),(9,1,5),(10,2,5),(11,1,6),(12,2,6),(13,1,7),(14,2,7),(16,2,8),(18,2,9),(20,2,10),(22,2,11),(24,2,12),(26,2,13),(28,2,14),(30,2,15),(32,2,16),(34,2,46),(36,2,47),(40,1,1),(48,1,9),(49,1,8),(51,1,2),(52,1,2),(53,1,2),(54,1,10),(56,1,77);

#
# Structure for table "subkategori"
#

DROP TABLE IF EXISTS `subkategori`;
CREATE TABLE `subkategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idkategori` int(11) DEFAULT 0,
  `nama` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Data for table "subkategori"
#

INSERT INTO `subkategori` VALUES (6,2,'pc 3'),(7,3,'el 1'),(8,3,'el 2'),(10,8,'Wajan'),(19,2,'accesories'),(20,30,'Beras'),(21,31,'sub perkakas');
