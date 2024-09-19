-- Banco de dados
CREATE DATABASE FormDB;
GO

USE FormDB;
GO

-- Tabela Clientes
CREATE TABLE Clientes (
    idcliente INT IDENTITY (1,1) PRIMARY KEY,
    nome VARCHAR(80),
    email VARCHAR(40),
    telefone BIGINT,
    cpf BIGINT,
    datanasc DATE
);
GO

-- Tabela Pedido
CREATE TABLE Pedido (
    idpedido INT IDENTITY (1,1) PRIMARY KEY,
    nomeproduto VARCHAR(50),
    qntdproduto INT,
    valor DECIMAL(10,2),
    datapedido DATE,
    vendedor VARCHAR(80),
    fkidcliente INT,
    FOREIGN KEY (fkidcliente) REFERENCES Clientes(idcliente)
);
GO

-- Inserções na tabela Clientes
INSERT INTO Clientes (nome, email, telefone, cpf, datanasc)
VALUES 
('Roberto Carlos', 'robertocarlos@gmail.com', 17999991111, 12312312343, '2024-09-17'),
('Amado Batista', 'amadobatista@gmail.com', 17944441121, 12315151533, '2024-09-23');
GO

-- Inserções na tabela Pedido
INSERT INTO Pedido (nomeproduto, qntdproduto, valor, datapedido, vendedor, fkidcliente)
VALUES 
('Violão', 1, 715.17, '2024-09-23', 'Sunburst', 1),
('Violino', 1, 731.61, '2024-09-18', 'Ronsani', 2);
GO
