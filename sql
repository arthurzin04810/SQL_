-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_cliente TEXT NOT NULL,
    email_cliente TEXT NOT NULL UNIQUE,
    telefone_cliente TEXT NOT NULL UNIQUE,
    CEPcl_iente TEXT not NULL,
    estado_cliente TEXT NOT NULL,
    cidade_cliente TEXT NOT NULL,
    bairro_cliente TEXT NOT NULL,
    data_cadastro TEXT DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
    produto_id INTEGER PRIMARY KEY AUTOINCREMENT,
    descrição_produto TEXT NOT NULL,
    valor_produto REAL NOT NULL CHECK(valor_produto >= 0),
    id_fornecedor INTEGER NOT NULL DEFAULT 0
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

