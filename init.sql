CREATE DATABASE IF NOT EXISTS `user_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_db`;

-- Table structure for table `users`
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Indexes for table `users`
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

-- AUTO_INCREMENT for table `users`
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

-- Create app user with proper host privileges for Docker network
CREATE USER IF NOT EXISTS 'app'@'%' IDENTIFIED BY 'rootpassword';
GRANT ALL PRIVILEGES ON `user_db`.* TO 'app'@'%' WITH GRANT OPTION;

-- Ensure app user can connect from any host
ALTER USER 'app'@'%' REQUIRE NONE;

FLUSH PRIVILEGES;