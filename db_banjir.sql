-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jan 2025 pada 10.09
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banjir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_banjir`
--

CREATE TABLE `data_banjir` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `status_banjir` enum('Tinggi','Sedang','Rendah') NOT NULL,
  `level` float NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_banjir`
--

INSERT INTO `data_banjir` (`id`, `lokasi`, `status_banjir`, `level`, `waktu`) VALUES
(1, 'Tembalang', 'Sedang', 10, '2025-01-16 04:07:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'John Doe', 'johndoe@example.com', '$2a$10$NXm88i7OElzGTkxqH3tca.IMh64BrvECQsvTSBeVsvOQJ2MG9h82u', '2025-01-11 12:55:28'),
(2, 'Hazard Prayoga', 'hazard@gmail.com', '$2a$10$suiAS2yozBRWfwhQAyoRkeY..Gc8BWkum6GpdZM/1BKyYMeC0n1aC', '2025-01-11 13:11:10'),
(3, 'yoga', 'yoga@gmail.com', '$2a$10$2DC/iEk1sGJQU8KalYpj.O8yKD8gJcnFSSzgfTJqHYEp5WBPLWgN2', '2025-01-11 13:11:19'),
(4, 'Arga Dwi Anugra', 'arga@gmail.com', '$2a$10$Zi5keWcZC2kQ8tw8WW.o5OADvfnRKBaNYmgbEJZae17BTnynAyQFC', '2025-01-11 13:15:19'),
(5, 'Ardian', 'ardian@gmail.com', '$2a$10$RsFO9njUqDXnDMKKrOzUku2Ed329IU/RADjYpsCem7fZWq0ycgvz2', '2025-01-11 13:22:30'),
(6, 'Hazard Prayoga', 'hazard.prayoga@gmail.com', '$2a$10$mCu7Lg6IVNSAyxHrRhJEtuyXqalvmj9sWem/rhA1UJSzQnqJ/lF7m', '2025-01-11 13:29:09'),
(7, 'robert rene', 'robert10@gmail.com', '$2a$10$7nVts6r10mJ6aVJp4veQauZlojmyt2wAE0gMAm3K9FIH8VmK/a7MC', '2025-01-11 13:32:22'),
(8, 'dwiprayoga', 'dwi@gmail.com', '$2a$10$cQ8Zv3p9l.MlU9T6oNkk3eSDcfOyIzi7Ow7XESBWhaVBwhGsWmWUS', '2025-01-11 23:32:00'),
(10, 'Andre', 'taulany@gmail.com', '$2a$10$GWPLUekkoEJfApPdAHEYJuC5ZQQUxG5YXuxfS.trpavH.OyIVw8vO', '2025-01-12 00:22:49'),
(11, 'yogas', 'yogas@gmail.com', '$2a$10$DA0pAdpSvS3o4DYot9PCSeBXFd1VyB5Fz.t7kDVT8HbWOtVXeSw2m', '2025-01-12 01:10:46'),
(12, 'adibing', 'yogasa@gmail.com', '$2a$10$eyr09hEHDJGiAU5X/Yzzye434ZciSZtEN5iW9RA1yPwzJQHqcX/wi', '2025-01-12 03:50:51'),
(13, 'nurisalsabila', 'abel@gmail.com', '$2a$10$tatS5jvn0jO8T7uyLn0acufUtpm0Alu5Ooj1nJP6Hl0V0ht/JqQ6C', '2025-01-12 04:02:47'),
(14, 'arga', 'arga10@gmail.com', '$2a$10$ZboFAPOZGVbUBJy7vQCQ7eslZlXhboZV36XpImKvbN3DyrVYCqb8y', '2025-01-12 05:30:12'),
(15, 'ronaldo', 'ronaldo@gmalil', '$2a$10$yUEObzOSJLhRBc9Lv61Y9uwai9YkmQutTZhwbH0vjI7m7HM4SNGw2', '2025-01-12 07:49:55'),
(16, 'arga', 'argadwi@gmail', '$2a$10$2/IgZZfjfXSdRBY1EKhBVecM3zUIVwbu/3EtPL4ET0baW5lXsdDDe', '2025-01-12 08:35:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_banjir`
--
ALTER TABLE `data_banjir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_banjir`
--
ALTER TABLE `data_banjir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
