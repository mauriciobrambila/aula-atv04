CREATE DATABASE IF NOT EXISTS aula04;
USE aula04;

CREATE TABLE contatos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        cidade VARCHAR(100) NOT NULL,
        telefone VARCHAR(20) NOT NULL
);

INSERT INTO contatos (nome, cidade, telefone) VALUES
('Maria Silva', 'São Paulo', '(11) 98765-4321'),
('João Souza', 'Rio de Janeiro', '(21) 91234-5678'),
('Ana Oliveira', 'Belo Horizonte', '(31) 99876-5432'),
('Carlos Pereira', 'Porto Alegre', '(51) 98765-1234');

