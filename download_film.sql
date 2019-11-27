-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2019 at 04:07 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `download_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `genre` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `nm_sutradara` varchar(20) NOT NULL,
  `nm_pemain` varchar(20) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `penulis` varchar(20) NOT NULL,
  `detail_film` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`genre`, `judul`, `tahun`, `nm_sutradara`, `nm_pemain`, `gambar`, `penulis`, `detail_film`) VALUES
('Action', 'Avengers: Infinity War', '2018', 'Anthony Russo', 'Robert Downey Jr', 'infinitywar.jpg', 'Christopher Markus', 'The Avengers dan sekutu mereka harus rela mengorbankan semua dalam upaya untuk mengalahkan Thanos yang kuat sebelum kehancuran dan kehancurannya mengakhiri alam semesta.'),
('Comedy', 'Gangs of Wasseypur', '2012', 'Anurag Kashyap', 'Manoj Bajpayee', 'Gangs of waspoor.jpg', 'Akhilesh Jaiswal', 'Bentrokan antara Sultan dan Shahid Khan menyebabkan pengusiran Khan dari Wasseypur, dan memicu perseteruan darah yang mematikan yang mencakup tiga generasi.'),
('Horror', 'Get Out ', '2017', 'Jordan Peele', 'Daniel Kaluuya', 'getout.jpg', 'Jordan Peele', 'Seorang anak muda mengunjungi orang tua pacar kulit putihnya untuk akhir pekan, di mana kegelisahannya yang membara tentang penerimaan mereka akan akhirnya mencapai titik didih.'),
('Comedy', 'Green Book', '2018', 'Peter Farrelly', 'Viggo Mortensen', 'greeen book.jpg', 'Nick Vallelonga', 'Seorang penjaga kelas Italia-Amerika menjadi pengendara pianis klasik Afrika-Amerika dalam tur ke berbagai tempat melalui Amerika Selatan tahun 1960-an.'),
('Horror', 'I Saw the Devil', '2010', 'Jee-woon Kim', 'Byung-Hun Lee', 'i saw the devil.jpg', 'Jee-woon Kim', 'Seorang agen rahasia membalas dendam pada pembunuh berantai melalui serangkaian penangkapan dan pembebasan.'),
('Fantasy', 'Inside Out', '2015', 'Pete Docter', 'Amy Poehler', 'inside out.jpg', 'Pete Docter', 'Setelah Riley muda dikeluarkan dari kehidupan Midwest-nya dan pindah ke San Francisco, emosinya berkonflik tentang cara terbaik untuk menavigasi kota, rumah, dan sekolah baru.'),
('Crime', 'Joker', '2019', 'Todd Phillips', 'Joaquin Phoenix', 'joker.jpg', 'Todd Phillips', 'Komedian Arthur Fleck yang bermasalah mental diabaikan dan dianiaya oleh masyarakat.\r\nJalan ini membawanya berhadapan muka dengan alter-egonya: \"The Joker\".'),
('Comedy', 'Parasite', '2019', 'Bong Joon Ho', 'Kang-ho Song', 'parasite.jpg', 'Han Jin Won', 'Semua menganggur, keluarga Ki-taek memiliki minat khusus pada Taman kaya dan glamor untuk mata pencaharian mereka sampai mereka terjerat dalam insiden tak terduga.'),
('Horror', 'Shaun of the Dead', '2004', 'Edgar Wright', 'Simon Pegg', 'shaun of the ded.jpg', 'Simon Pegg', 'Kehidupan lancar seorang pria terganggu oleh kiamat zombie.'),
('Crime', 'The Dark Knight', '2008', 'Christopher Nolan', 'Christian Bale', 'the dark night.jpg', 'Jonathan Nolan', 'Ketika Joker mendatangkan malapetaka dan kekacauan pada orang-orang Gotham, Batman harus menerima salah satu tes terbesar dari kemampuannya untuk melawan ketidakadilan'),
('Crime', 'The Invisible Guest', '2016', 'Oriol Paulo', 'Mario Casas', 'invisibe guestt.jpg', 'Oriol Paulo', 'Pengusaha sukses yang dituduh melakukan pembunuhan dan ahli persiapan saksi memiliki waktu kurang dari tiga jam untuk mengajukan pembelaan yang tidak dapat ditembus.'),
('Fantasy', 'The Lord of the Rings: The Return of the King', '2003', 'Peter Jackson', 'Elijah Wood', 'lotr.jpg', 'J.R.R. Tolkien', 'Gandalf dan Aragorn memimpin Dunia Manusia melawan pasukan Sauron untuk mengalihkan pandangannya dari Frodo dan Sam ketika mereka mendekati Gunung Doom dengan Satu Cincin'),
('Action', 'The Mountain II', '2016', 'Alper Caglar', 'Ozan Agaç', 'the mountain 2.jpg', 'Alper Caglar', 'Di zona perang yang sunyi di mana teriakan gema yang tidak bersalah, di garis yang sangat antara bencana dan keberanian, 7 Maroon Baret akan menari dengan kematian.'),
('Action', 'Uri: The Surgical Strike', '2019', 'Aditya Dhar', 'Vicky Kaushal', 'the surgical strike.jpg', 'Aditya Dhar', 'Pasukan khusus tentara India melakukan operasi rahasia, membalas pembunuhan sesama prajurit di pangkalan mereka oleh kelompok teroris.'),
('Fantasy', 'Your Name', '2016', 'Makoto Shinkai', 'Ryûnosuke Kamiki', 'your name.jpg', 'Makoto Shinkai', 'Dua orang asing menemukan diri mereka terhubung dengan cara yang aneh. Ketika suatu koneksi terbentuk, akankah jarak menjadi satu-satunya hal yang membuatnya terpisah?');

-- --------------------------------------------------------

--
-- Table structure for table `pemain`
--

CREATE TABLE `pemain` (
  `nm_pemain` varchar(20) NOT NULL,
  `jenis_kl` varchar(10) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `profil` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemain`
--

INSERT INTO `pemain` (`nm_pemain`, `jenis_kl`, `alamat`, `tgl_lahir`, `profil`) VALUES
('Byung-Hun Lee,', 'Pria', 'Seoul, Korea Selatan,', '12 Juli 1970', 'Dia tidak pernah bermimpi mengejar akting sampai seorang teman ibunya menyarankannya. Dia mengikuti audisi untuk jaringan televisi KBS pada tahun 1991 dan diterima. Proyek pertamanya adalah serial TV singkat yang disebut \"Asphalt My Hometown\". Lee menjadi populer, terutama dengan kerumunan wanita, dalam proyek KBS berikutnya, \"Tomorrow Love\", pada tahun 1992. Meskipun ia terus melakukan serial TV sepanjang tahun 90-an, ia juga mencoba peruntungannya dalam film layar lebar. '),
('Christian Bale', 'Pria', 'Pembrokeshire, Wales, UK', '30 Januari 1974', 'Dari orang tua Inggris Jennifer \"Jenny\" (James) dan David Bale. Ibunya adalah pemain sirkus dan ayahnya, yang lahir di Afrika Selatan, adalah seorang pilot komersial. Keluarga itu tinggal di berbagai negara sepanjang masa kecil Bale, termasuk Inggris, Portugal, dan Amerika Serikat. Bale mengakui perubahan terus-menerus adalah salah satu pengaruh pada pilihan karirnya.'),
('Manoj Bajpayee,', 'Pria', 'Belwa, Bihar, India', '23 April 1969', ' Dia dikenal karena karyanya tentang Geng of Wasseypur (2012), Satya (1998) dan Aks (2001). Dia telah menikah dengan Neha sejak 23 Februari 2005.'),
('Mario Casas', 'Pria', 'galicia, Spanyol', '12 Juni 1983', 'Mario Casas, memiliki 4 saudara kandung. Dilahirkan di La Coruña, meskipun masih sangat muda, pada usia 4 tahun, ia pergi bersama keluarganya ke Barcelona. Kemudian, pada usia 18, ia beremigrasi ke ibukota Spanyol dalam sebuah petualangan di mana ia membawa seluruh keluarganya bersamanya.'),
('Ozan Agaç', 'Pria', 'New York', '1 Juli 1979', 'Ozan Agac adalah seorang aktor dan penulis, yang dikenal karena Karadayi (2012), Sarikamis Cocuklari (2017) dan Inside (2016).'),
('Robert Downey Jr', 'Pria', ' Manhattan, New York', '4 April 1965', 'Robert Downey Jr telah berevolusi menjadi salah satu aktor paling disegani di Hollywood. Dengan daftar kredit luar biasa untuk namanya, ia telah berhasil tetap baru dan segar bahkan setelah lebih dari empat dekade dalam bisnis ini.'),
('Ryûnosuke Kamiki', 'Pria', 'Fujimi, Jepang', '19 Mei 1993', 'Ryûnosuke Kamiki lahir di Fujimi, Jepang. Dia didiagnosis dengan penyakit langka segera setelah dia lahir dan cukup beruntung untuk menjadi salah satu dari 1% yang selamat dari penyakit tersebut. Untuk merayakan keajaiban ini, ibunya memutuskan untuk mendaftarkannya sebagai aktor cilik di agensi untuk mencatat pertumbuhannya. Dia berakting di iklan TV pertamanya ketika dia berusia dua tahun, dan dia dengan cepat menjadi salah satu aktor anak terbaik di generasinya. Dia memulai debutnya di drama TV ketika dia berusia 6 tahun, bertindak sebagai anak tiri dari karakter utama Takeshi Kurosawa (diperankan oleh idola Jepang Masahiro Nakai) dalam drama TV 1999 Good News. (Dia juga muncul sebentar sebagai aktor Pendukung dalam drama 1998 Happy Mania). '),
('Simon Pegg', 'Pria', 'Brockworth, Inggris', '14 Februari 1970', 'Aktor, penulis dan komedian Inggris Simon Pegg lahir Simon John Beckingham di Brockworth, Gloucestershire, dari Gillian Rosemary (Smith), seorang pegawai negeri, dan John Henry Beckingham, seorang musisi jazz. Orang tuanya bercerai ketika Pegg berusia tujuh tahun. Dia kemudian mengambil nama ayah tirinya, \"Pegg\". Dia dididik di Brockworth Comprehensive Secondary School di Gloucestershire dan melanjutkan ke Stratford-upon-Avon College untuk belajar sastra Inggris dan studi kinerja. Dia kemudian kuliah di Universitas Bristol, dan meraih gelar sarjana dalam bidang drama. Pada awal 1990-an, Pegg pindah ke London dan mulai menempa karier yang sukses di komedi stand-up. Peluang televisi diikuti termasuk peran dalam Six Pairs of Pants (1995), Asylum (1996) dan We Know Where You Live (1997). Pada tahun 1999, Pegg dan Jessica Hynes bekerja sama untuk menulis dan membintangi film komedi situasi Spaced (1999), disutradarai oleh Edgar Wright. Serial ini juga menampilkan teman terbaik Pegg, Nick Fr'),
('Vicky Kaushal', 'Pria', 'Mumbai, India', ' 16 Mei 1988', 'Vicky Kaushal adalah aktor dan asisten sutradara, yang dikenal karena Uri: The Surgical Strike (2019), Sanju (2018) dan Raazi (2018).'),
(' Amy Poehler', 'Pria', 'Burllington, Amerika Serikat', '16 September 1971', 'Amy pertama kali terlibat dengan komedi sketsa ketika dia bergabung dengan grup My Mother\'s Flea Bag ketika dia menghadiri Boston College. Pada tahun 1993, ia pergi ke Chicago di mana ia belajar di Olimpiade Kota Kedua dan Improv. Di sana, dia bertemu Del Close, yang kemudian menjadi suara adegan pembuka UCB. Pada tahun 1996, ia bergabung dengan Brigade Warga Tegak bersama Matt Besser, Ian Roberts, dan Matt Walsh. Kemudian, kelompok itu pindah ke New York dan menjadi acara Comedy Central. Acara ini hanya berlangsung selama tiga musim. Namun, kelompok itu tetap bersama di Teater Brigade Warga tegak. Saat ini, teater adalah salah satu pusat terkemuka untuk pertunjukan improvisasi dan sketsa. '),
(' Daniel Kaluuya', 'Pria', 'London, Inggris', '24 Feburari 1989', 'Daniel Kaluuya adalah aktor dan penulis bahasa Inggris. Ia terkenal karena Get Out (2017) dan Black Panther (2018).\r\nDia juga membintangi episode Black Mirror \"Fifteen Million Merits\".\r\nUntuk pekerjaannya di Get Out, ia dinominasikan untuk Academy Award untuk Aktor Terbaik\r\nKaluuya juga memiliki peran kecil dalam Johnny English Reborn (2011), Kick-Ass 2 (2013) dan Sicario (2015).\r\n'),
(' Elijah Wood', 'Pria', 'Cedar Rapids, Iowa, Wood', '28 Januari 1981', 'Elijah Wood adalah aktor Amerika yang terkenal karena memerankan Frodo Baggins dalam film trilogi Lord of the Rings karya Peter Jackson. Selain mengulang peran dalam seri The Hobbit, Wood juga memerankan Ryan dalam komedi televisi FX Wilfred (2011) dan pengisi suara Beck dalam serial televisi animasi XD TRON: Uprising (2012).'),
(' Joaquin Phoenix', 'Pria', 'San Juan, Puerto Rico', '28 Oktober 1974', 'Orang tuanya, dari benua Amerika Serikat, kemudian melayani sebagai misionaris Children of God. Ibunya berasal dari keluarga Yahudi dari New York, sementara ayahnya, dari California, sebagian besar keturunan Kepulauan Inggris. Sebagai seorang anak muda, Joaquin mengambil isyarat dari kakak yang lebih tua, River Phoenix dan Rain Phoenix, mengubah namanya menjadi Leaf agar cocok dengan para moniker yang lebih bersahaja. Ketika anak-anak didorong untuk mengembangkan naluri kreatif mereka, ia mengikuti jejak mereka ke dunia akting. Saudari yang lebih muda, Liberty Phoenix dan Summer Phoenix melengkapi rombongan berbakat itu.'),
(' Kang-ho Song', 'Pria', 'Busan, Korea Selatan', '17 Januari 1967', 'Song Kang-ho tidak pernah dilatih secara profesional sebagai aktor, memulai karirnya di kelompok teater sosial setelah lulus dari Sekolah Menengah Kimhae. Kemudian, ia bergabung dengan perusahaan teater berpengaruh Kee Kuk-seo dengan penekanan pada akting naluriah dan improvisasi, yang terbukti menjadi tempat latihan Song. Meskipun secara teratur mendekati untuk berakting dalam film, ia selalu menolak kesempatan sampai mengambil peran sebagai tambahan di Hong Sang-soo, The Day a Pig Fell Into the Well (1996). Pada tahun berikutnya, setelah memerankan salah satu tunawisma dalam drama-dokumenter Sun-Woo Jang, Timeless Bottomless Bad Movie (1997), ia mendapatkan ketenaran sekte karena penampilannya dalam mencuri adegan di Neung-han Song No. 3 (1997) sebagai gangster melatih sekelompok rekrutan muda, memenangkan penghargaan Aktor Terbaik pertamanya.'),
(' Viggo Mortensen', 'Pria', 'New York City', '20 Oktober 1958', 'Ayahnya adalah orang Denmark, ibunya orang Amerika, dan kakek dari pihak ibu adalah orang Kanada. Orang tuanya bertemu di Norwegia. Mereka menikah dan pindah ke New York, tempat Viggo, Jr lahir, sebelum pindah ke Amerika Selatan, tempat Viggo, Sr mengelola peternakan ayam dan peternakan di Venezuela dan Argentina. Dua putra lagi lahir, Charles dan Walter, sebelum pernikahan menjadi semakin tidak bahagia. Ketika Viggo berusia tujuh tahun, orang tuanya mengirimnya ke sekolah asrama ketat, terisolasi di kaki pegunungan Argentina. Kemudian, pada usia sebelas, orang tuanya bercerai. Ibunya memindahkan dirinya dan anak-anak kembali ke negara asalnya, New York.');

-- --------------------------------------------------------

--
-- Table structure for table `sutradara`
--

CREATE TABLE `sutradara` (
  `nm_sutradara` varchar(20) NOT NULL,
  `jenis_kl` varchar(10) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `profil` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sutradara`
--

INSERT INTO `sutradara` (`nm_sutradara`, `jenis_kl`, `alamat`, `tgl_lahir`, `profil`) VALUES
('Alper Caglar', 'Pria', 'Ankara, Turki.', '1 September 1981 ', 'Caglar adalah seorang sutradara yang dikenal secara nasional karena menangani topik polarisasi dan genre maverick. Dia menulis dan mengedit semua filmnya, serta menjadi produser eksekutif dari film terbarunya.'),
('Bong Joon Ho', 'Pria', ' Daegu, Korea Selata', '14 September 1969', 'Dia adalah seorang penulis dan sutradara, yang dikenal karena Parasite (2019), Okja (2017) dan Snowpiercer (2013).'),
('Christopher Nolan', 'Pria', ' London, Inggris', '30 Juli 1970', ' Selama 15 tahun pembuatan film, Nolan telah beralih dari film independen berbiaya rendah menjadi mengerjakan beberapa film laris terbesar yang pernah dibuat.'),
('Jee-woon Kim', 'Pria', ' Seoul, Korea Selata', '27 Mei 1964', ' Dia adalah seorang sutradara dan penulis, yang dikenal dengan The Good the Bad the Weird (2008), A Tale of Two Sisters (2003) dan I Saw the Devil (2010).'),
('Makoto Shinkai', 'Pria', 'Jepang', '9 Februari 1973', 'Shinkai belajar sastra Jepang di Universitas Chuo di mana ia menjadi anggota klub sastra remaja di mana ia menggambar buku gambar. Pada tahun 1999, Shinkai merilis She and Her Cat, karya pendek lima menit yang dibuat secara monokrom.Film-filmnya yang paling dikenal adalah The Place Promised in Our Early Days (2004), 5 Sentimeter Per Detik (2007), Children Who Chase Lost Voices (2011), The Garden of Words (2013), dan Your Name (2016).'),
('Peter Farrelly', 'Pria', 'Phoenixville, Pennsy', '17 Desember 1956 ', ' Dia adalah seorang produser dan penulis, dikenal dengan Green Book (2018), There Something About Mary (1998) dan Dumb and Dumber (1994). Dia telah menikah dengan Melinda Farrelly sejak 31 Desember 1996. Mereka memiliki dua anak.'),
('Peter Jackson', 'Pria', 'Selandia Baru', '8 September 1961', 'Ketika seorang teman orang tuanya membelikannya kamera film super 8 (karena dia melihat betapa dia sangat menikmati mengambil foto), pada saat itu delapan Peter yang berusia satu tahun langsung meraih benda itu untuk mulai merekam filmnya sendiri, yang ia buat bersama teman-temannya. Mereka biasanya pendek, tetapi mereka sudah memiliki merek dagang yang akan membuat Jackson terkenal: efek khusus yang mengesankan, dibuat dengan biaya yang sangat rendah. Misalnya, untuk filmnya \"Perang Dunia Kedua\" yang ia buat saat remaja, ia biasa mensimulasikan senjata api dengan meninju lubang kecil ke dalam seluloid, sehingga, setelah diproyeksikan, pistol itu memberi kesan menampilkan api kecil.'),
('Todd Phillips', 'Pria', 'Brooklyn, AS', '20 Desember 1970', 'Dia adalah seorang produser dan sutradara, yang dikenal karena Joker (2019), Due Date (2010) dan Old School (2003).'),
(' Aditya Dhar', 'Pria', 'Delhi', '12 Maret 1983', 'Film fitur debutnya sebagai sutradara Uri: The Surgical Strike, dibintangi oleh Vicky Kaushal yang diproduksi oleh RSVP Films, sukses besar di atas Rs. 200 Cr dalam koleksi box office. Film yang mendapat pujian kritis ini sangat dihargai oleh penonton di seluruh negeri dan ini adalah salah satu film dengan peringkat teratas di IMDb. Aditya telah dikaitkan di masa lalu dengan film-film seperti Kabul Express, Tezz, Aakrosh, Haal-e-Dil antara lain dalam kapasitas yang berbeda seperti penulis dialog, penulis skenario dan penulis lirik.'),
(' Anthony Russo', 'Pria', 'Cleveland, Ohio, AS', '3 Februari 1970 ', 'Dia adalah seorang produser dan sutradara, yang dikenal karena Avengers: Infinity War (2018), Avengers: Endgame (2019) dan Captain America: The Winter Soldier (2014).'),
(' Anurag Kashyap', 'Pria', 'India', '10 September 1972', 'Sebagai pembuat film, ia dikenal dengan Black Friday (2004), sebuah film Hindi yang kontroversial dan memenangkan penghargaan tentang pemboman Mumbai 1993, diikuti oleh No Smoking (2007), Dev D (2009), Gulaal (2009), That Girl in Yellow Boots (2011) dan Geng of Wasseypur (2012). Sebagai penulis skenario, ia menulis naskah untuk Satya pemenang Filmfare Award (1998) dan film Kanada Water Academy (nominasi Academy Award) (2005). Ia mendirikan perusahaan produksi filmnya, Anurag Kashyap Films Pvt. Ltd. pada tahun 2009.'),
(' Edgar Wright', 'Pria', 'Inggris', '18 April 1974', ' seorang sutradara, penulis skenario, produser, dan aktor Inggris. Dia terkenal karena komedinya trilogi film Three Flavours Cornetto yang terdiri dari Shaun of the Dead (2004), Hot Fuzz (2007), dan The World\'s End'),
(' Jordan Peele', 'Pria', 'New York, AS', '21 Februari 1979', 'Dia dikenal karena menulis bersama dan membintangi komedi Keanu (2016), berlawanan dengan teman dekatnya Keegan-Michael Key, karena menulis dan mengarahkan film horor Get Out (2017), yang dinominasikan untuk Film Terbaik, pemeran utama, Skenario, Skenario (memenangkan hadiah), dan Sutradara di Academy Awards, dan untuk tugas menulis-mengarahkan-plus pada Kami (2019), film horor yang memiliki salah satu bukaan non-franchise live action tertinggi sepanjang masa.'),
(' Oriol Paulo', 'Pria', 'Barcelona, Spanyol', '1 Maret 1975', 'Sebagai penulis naskah, ia menulis skenario untuk film layar kecil seperti Ecos (2006) dan Codi 60 (2011), tetapi terkenal karena karyanya dalam seri seperti Absolute mayoritas (2004) dan The color of the cuitat (2004-09) ).'),
(' Pete Docter', 'Pria', ' Bloomington, Minnes', ' 9 Oktober 1968', ' Dia adalah seorang penulis, yang dikenal dengan Up (2009), Inside Out (2015) dan Monsters, Inc. (2001). Dia telah menikah dengan Amanda Jean Schmidt sejak 27 Desember 1992. Mereka memiliki dua anak.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`nm_pemain`);

--
-- Indexes for table `sutradara`
--
ALTER TABLE `sutradara`
  ADD PRIMARY KEY (`nm_sutradara`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
