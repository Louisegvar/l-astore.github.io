
INSERT INTO cliente (nome, cpf, endereco, telefone) VALUES
("Mariana Silva Costa", "123.456.789-00", "Rua das Flores, 123", "(11) 98765-4321"),
("João Pedro Almeida", "987.654.321-99", "Avenida Brasil, 456", "(21) 91234-5678"),
("Ana Beatriz Souza", "321.654.987-12", "Rua do Sol, 789", "(31) 99876-5432"),
("Lucas Ferreira Mendes", "456.789.123-45", "Travessa das Palmeiras, 234", "(41) 99654-3210"),
("Fernanda Ribeiro Lima", "654.321.987-67", "Rua Amazonas, 567", "(81) 98712-3456");
select * from cliente;
INSERT INTO fornecedor (nome, telefone) VALUES
("Carlos Eduardo Santos", "(11) 91234-5678"),
("Mariana Oliveira", "(21) 99876-5432"),
("Rafael Gomes", "(31) 98765-4321"),
("Juliana Ferreira", "(41) 99654-3210"),
("Pedro Henrique Lima", "(51) 98712-3456");
select * from fornecedor;

delete from cliente where idcliente > 5;
INSERT INTO produtos (nome, tamanho, preco, fornecedor_idfornecedor) VALUES
("Blusa Louise", "P", 189.90, 1),
("Calça Lara", "42", 149.90, 2),
("Vestido Lilian", "40", 189.90, 3),
("Vestido Boreal", "G", 149.90, 4),
("Blusa Marta", "Único", 99.90, 5);
select * from produtos;
INSERT INTO compra (nome_produto, data_compra, valor_total, cliente_idcliente) VALUES
("Calça Lara", "2025-08-01", 149.90, 1),
("Blusa Marta", "2025-08-03", 99.90, 2),
("Blusa Louise", "2025-08-10", 189.90, 3),
("Vestido Boreal", "2025-08-15", 149.90, 4),
("Vestido Boreal", "2025-08-20", 149.90, 5);
select * from compra;

INSERT INTO produtos_compra (produtos_idprodutos, compra_idcompra) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);
select * from produtos_compra;
