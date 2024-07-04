CREATE TABLE `mahasiswa` (
  `matakuliah` varchar(255),
  `dosen` varchar(255),
  `jurusan` varchar(255),
  `jadwal` float,
  `id_mahasiswa` int
);

CREATE TABLE `id_matkul` (
  `id_matkul` varchar(255),
  `sks` int
);

CREATE TABLE `matakuliah` (
  `atribut` int,
  `id_mahasiswa` int,
  `id_jadwal` int,
  `sks` varchar(255),
  `id_matkul` int
);

CREATE TABLE `id_mahasiswa` (
  `id_matkul` int,
  `id_tanggal` int
);

CREATE TABLE `krs` (
  `id_mahasiswa` int,
  `id_matkul` int,
  `tanggal_krs` int,
  `total_sks` varchar(255)
);

CREATE TABLE `tgl_krs` (
  `id_matkul` int,
  `id_mahasiswa` varchar(255)
);

CREATE TABLE `mempunyai` (
  `id_matkul` int,
  `id_tanggal` int
);

CREATE TABLE `dosen` (
  `nomer_dosen` int,
  `nama_dosen` varchar(255),
  `id_dosen` varchar(255),
  `alamat` varchar(255),
  `id_matkul` int,
  `id_mahasiswa` int
);

ALTER TABLE `id_matkul` ADD FOREIGN KEY (`id_matkul`) REFERENCES `id_matkul` (`sks`);

ALTER TABLE `id_mahasiswa` ADD FOREIGN KEY (`id_matkul`) REFERENCES `id_matkul` (`id_matkul`);

ALTER TABLE `krs` ADD FOREIGN KEY (`id_mahasiswa`) REFERENCES `matakuliah` (`id_jadwal`);

ALTER TABLE `tgl_krs` ADD FOREIGN KEY (`id_matkul`) REFERENCES `mahasiswa` (`dosen`);

ALTER TABLE `mempunyai` ADD FOREIGN KEY (`id_matkul`) REFERENCES `id_matkul` (`id_matkul`);

ALTER TABLE `dosen` ADD FOREIGN KEY (`id_dosen`) REFERENCES `id_matkul` (`sks`);
