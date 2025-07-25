CREATE DATABASE IF NOT EXISTS topup_db;
USE topup_db;

CREATE TABLE admins (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE games (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image_url TEXT
);

CREATE TABLE transactions (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id VARCHAR(100) NOT NULL,
  game_id INT,
  nominal INT,
  method VARCHAR(50),
  status VARCHAR(20) DEFAULT 'pending',
  reference TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);