CREATE DATABASE IF NOT EXISTS astronauts;

USE astronauts;

CREATE TABLE IF NOT EXISTS astronaut (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  created_at TIMESTAMP DEFAULT UTC_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS astronaut_snapshot (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  astronaut_id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  surname VARCHAR(20) NOT NULL,
  birthdate DATE NOT NULL,
  superpower VARCHAR(20) NOT NULL,
  is_deleted TINYINT(1) DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT UTC_TIMESTAMP,
  expired_at TIMESTAMP NULL,
  FOREIGN KEY (astronaut_id) REFERENCES astronaut (id)
);