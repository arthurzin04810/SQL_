CREATE TABLE IF NOT EXISTS cliente(
  	id INTEGER PRIMARY KEY AUTOINCREMENT,
  	nome TEXT NOT NULL,
  	telefone TEXT NOT NULL,
  	cpf TEXT NOT NULL UNIQUE
 ); 
 
 INSERT INTO cliente (nome, telefone, cpf)
 VALUES
 ('Davi', '459999999994', '000.000.700-67');
  SELECT * FROM cliente; 
