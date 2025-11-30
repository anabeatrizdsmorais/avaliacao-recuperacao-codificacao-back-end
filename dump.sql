CREATE DATABASE IF NOT EXISTS estoque_pecas;

USE estoque_pecas;

-- Criando a tabela de peças automotivas
CREATE TABLE IF NOT EXISTS pecas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    sku VARCHAR(80),
    marca VARCHAR(100),
    categoria VARCHAR(50) NOT NULL,
    veiculo VARCHAR(150),         -- Compatibilidade (Corolla, Onix, HB20, etc.)
    preco DECIMAL(10,2) NOT NULL,
    quantidade INT NOT NULL DEFAULT 0,
    cod_barras VARCHAR(50),
    descricao TEXT,
    tags VARCHAR(250),
    data_cadastro DATE,
    ativo TINYINT(1) NOT NULL DEFAULT 1,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM pecas;