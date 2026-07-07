USE farmacia;

-- ===========================================
-- TABELA CLIENTES
-- ===========================================

CREATE TABLE IF NOT EXISTS Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    cpf VARCHAR(14),
    telefone VARCHAR(20)
);

INSERT INTO Clientes (id, nome, idade, cpf, telefone)
VALUES
(1, 'Marli Zaluski', 60, '123.456.789-00', '11999999999'),
(2, 'João Carlos Silva', 45, '222.333.444-55', '11988887777'),
(3, 'Ana Beatriz Souza', 28, '489.555.555-44', '11554484384'),
(4, 'Pedro Henrique Lima', 37, '123.456.789-10', '11911112222'),
(5, 'Juliana Ferreira', 31, '234.567.890-11', '11922223333'),
(6, 'Carlos Eduardo Santos', 52, '345.678.901-22', '11933334444'),
(7, 'Fernanda Oliveira', 24, '456.789.012-33', '11944445555'),
(8, 'Lucas Gabriel Almeida', 19, '567.890.123-44', '11955556666'),
(9, 'Patrícia Gomes', 41, '678.901.234-55', '11966667777'),
(10, 'Roberto Costa', 67, '789.012.345-66', '11977778888');

-- ===========================================
-- TABELA MEDICAMENTOS
-- ===========================================

CREATE TABLE IF NOT EXISTS Medicamentos (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100),
    preco DECIMAL(10,2)
);

INSERT INTO Medicamentos (id, nome, fabricante, preco)
VALUES
(1, 'Dipirona 1g', 'EMS', 10.90),
(2, 'Paracetamol 750mg', 'Neo Química', 14.50),
(3, 'Ibuprofeno 600mg', 'Medley', 22.90),
(4, 'Amoxicilina 500mg', 'EMS', 38.00),
(5, 'Dorflex', 'Sanofi', 19.90),
(6, 'Buscopan Composto', 'Boehringer', 27.90),
(7, 'Omeprazol 20mg', 'EMS', 18.90),
(8, 'Losartana 50mg', 'Sandoz', 24.90),
(9, 'Atenolol 50mg', 'Teuto', 16.90),
(10, 'Captopril 25mg', 'EMS', 12.90),
(11, 'Metformina 850mg', 'Merck', 21.90),
(12, 'Azitromicina 500mg', 'Pfizer', 59.90),
(13, 'Amoxicilina + Clavulanato', 'EMS', 74.90),
(14, 'Loratadina 10mg', 'Medley', 19.90),
(15, 'Desloratadina 5mg', 'EMS', 28.90),
(16, 'Simeticona Gotas', 'Sanofi', 16.90),
(17, 'Dramin B6', 'Takeda', 24.90),
(18, 'Nimesulida 100mg', 'EMS', 17.90),
(19, 'Diclofenaco 50mg', 'Medley', 18.90),
(20, 'Cetoprofeno 100mg', 'Eurofarma', 26.90),
(21, 'Prednisona 20mg', 'EMS', 22.90),
(22, 'Dexametasona 4mg', 'Teuto', 19.90),
(23, 'Insulina NPH', 'Novo Nordisk', 119.90),
(24, 'Insulina Regular', 'Novo Nordisk', 129.90),
(25, 'Salbutamol Aerosol', 'GSK', 49.90),
(26, 'Budesonida Spray', 'AstraZeneca', 89.90),
(27, 'Montelucaste 10mg', 'EMS', 45.90),
(28, 'Pantoprazol 40mg', 'Medley', 27.90),
(29, 'Esomeprazol 40mg', 'AstraZeneca', 69.90),
(30, 'Sinvastatina 20mg', 'EMS', 23.90),
(31, 'Atorvastatina 20mg', 'Pfizer', 64.90),
(32, 'Clopidogrel 75mg', 'Sanofi', 89.90),
(33, 'Varfarina 5mg', 'Teuto', 28.90),
(34, 'Furosemida 40mg', 'EMS', 14.90),
(35, 'Hidroclorotiazida 25mg', 'Medley', 13.90),
(36, 'Espironolactona 25mg', 'Eurofarma', 25.90),
(37, 'Metildopa 250mg', 'EMS', 29.90),
(38, 'Propranolol 40mg', 'Teuto', 17.90),
(39, 'Finasterida 1mg', 'Merck', 79.90),
(40, 'Tadalafila 20mg', 'EMS', 69.90),
(41, 'Sildenafila 50mg', 'Pfizer', 89.90),
(42, 'Polaramine', 'Sanofi', 18.90),
(43, 'Cetirizina 10mg', 'EMS', 21.90),
(44, 'Hidroxizina 25mg', 'Teuto', 23.90),
(45, 'Metoclopramida 10mg', 'Neo Química', 14.90),
(46, 'Ondansetrona 8mg', 'EMS', 39.90),
(47, 'Tramadol 50mg', 'Medley', 49.90),
(48, 'Codeína 30mg', 'Aché', 59.90),
(49, 'Azitromicina 250mg', 'EMS', 44.90),
(50, 'Omeprazol 20mg (Genérico)', 'Neo Química', 16.90);
-- ===========================================
-- TABELA VENDAS
-- ===========================================

CREATE TABLE IF NOT EXISTS Vendas (
    id INT PRIMARY KEY,
    cliente_id INT NOT NULL,
    medicamento_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    total DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (medicamento_id) REFERENCES Medicamentos(id)
);

INSERT INTO Vendas (id, cliente_id, medicamento_id, quantidade, data_venda, total)
VALUES
(1, 1, 2, 2, '2026-07-01', 29.00),
(2, 2, 5, 1, '2026-07-01', 19.90),
(3, 3, 10, 3, '2026-07-02', 38.70),
(4, 4, 7, 1, '2026-07-02', 18.90),
(5, 5, 12, 1, '2026-07-02', 59.90);

-- ===========================================
-- CONSULTAS
-- ===========================================

-- Mostrar todos os clientes
SELECT * FROM Clientes;

-- Mostrar todos os medicamentos
SELECT * FROM Medicamentos;

-- Mostrar todas as vendas
SELECT * FROM Vendas;

-- Relatório de vendas
SELECT
    Vendas.id AS venda,
    Clientes.nome AS cliente,
    Medicamentos.nome AS medicamento,
    Vendas.quantidade,
    Vendas.total,
    Vendas.data_venda
FROM Vendas
INNER JOIN Clientes
    ON Vendas.cliente_id = Clientes.id
INNER JOIN Medicamentos
    ON Vendas.medicamento_id = Medicamentos.id;

-- Mostrar as tabelas existentes
SHOW TABLES;