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
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    descrição_produto TEXT NOT NULL,
    valor_produto REAL NOT NULL CHECK(valor >= 0),
    id_fornecedor INTEGER NOT NULL DEFAULT 0
);


CREATE TABLE IF NOT EXISTS fornecedor (
    id_fornecedor INTEGER PRIMARY KEY AUTOINCREMENT,
    fornecedor_CNPJ INTEGER NOT NULL UNIQUE,
    fornecedor telefone TEXT NOT NULL UNIQUE,
    fornecedor_nome TEXT NOT NULL UNIQUE,
    fornecedor_CEP TEXT NOT NULL,
    forneedor_estado TEXT NOT NULL,
    fornecedor_cidade TEXT NOT NULL,
    fornecedor_bairro TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente) ON DELETE CASCADE
);

-- Tabela de Itens do movimento (Relação Muitos para Muitos)
CREATE TABLE IF NOT EXISTS movimento(
    movimento_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    valor_movimento INTEGER NOT NULL,
    PRIMARY KEY (movimento_id, produto_id),
    FOREIGN KEY (cliente_id) REFERENCES produtos(id)
