SELECT * FROM demo;
-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
cliente_id INTEGER PRIMARY KEY AUTOINCREMENT,
cliente_telefone TEXT NOT NULL,
cliente_nome TEXT NOT NULL,
cliente_bairro TEXT NOT NULL,
cliente_cidade TEXT NOT NULL,
cliente_estado TEXT NOT NULL,
cliente_cep TEXT NOT NULL,
cliente_email TEXT NOT NULL UNIQUE
);

-- Tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
produto_id INTEGER PRIMARY KEY AUTOINCREMENT,
produto_descricao,
produto_valor
);


CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    fornecedor_CNPJ INTEGER NOT NULL UNIQUE,
    fornecedor_telefone TEXT NOT NULL UNIQUE,
    fornecedor_nome TEXT NOT NULL UNIQUE,
    fornecedor_CEP TEXT NOT NULL,
    forneedor_estado TEXT NOT NULL,
    fornecedor_cidade TEXT NOT NULL,
    fornecedor_bairro TEXT NOT NULL
);

-- Tabela de Itens do movimento 
CREATE TABLE IF NOT EXISTS movimento (
  movimento_id TEXT NOT NULL UNIQUE,
  movimento_produto INTEGER TEXT NOT NULL,
  movimento_valor INTEGER TEXT NOT NULL,
  movimento_desc INTEGER TEXT NOT NULL,
      PRIMARY KEY (movimento_id, produto_id),
    FOREIGN KEY (movimento_id) REFERENCES movimento(movimento_id) ON DELETE CASCADE,
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id)
  
);

