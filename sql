
-- Tabela de Clientes
CREATE TABLE IF NOT EXISTS clientes (
    cliente_id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_cpf TEXT NOT NULL UNIQUE,
    cliente_telefone TEXT NOT NULL,
    cliente_nome TEXT NOT NULL,
    cliente_bairro TEXT NOT NULL,
    cliente_cidade TEXT NOT NULL,
    cliente_uf TEXT NOT NULL,
    cliente_logradouro TEXT NOT NULL,
    cliente_numero_residencia TEXT NOT NULL,
    cliente_cep TEXT NOT NULL,
    cliente_email TEXT NOT NULL UNIQUE
);

-- Tabela de Produtos 
CREATE TABLE IF NOT EXISTS produtos (
    produto_id INTEGER PRIMARY KEY AUTOINCREMENT,
    produto_descricao TEXT NOT NULL,
    produto_valor REAL NOT NULL,
    produto_unidade TEXT NOT NULL
);

-- Tabela de Itens do movimento 
CREATE TABLE IF NOT EXISTS movimento (
    movimento_id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL,
    movimento_data TEXT NOT NULL,
    movimento_valor REAL NOT NULL, 
    FOREIGN KEY(cliente_id) REFERENCES clientes(cliente_id) ON DELETE CASCADE
);

-- Tabela de Itens do produto do movimento
CREATE TABLE IF NOT EXISTS item_movimento(
    item_id INTEGER PRIMARY KEY AUTOINCREMENT,
    movimento_id INTEGER NOT NULL, 
    produto_id INTEGER NOT NULL,   
    item_numero INTEGER NOT NULL,
    item_quantidade INTEGER NOT NULL, 
    item_desconto REAL NOT NULL,    
    item_valor REAL NOT NULL,        
    FOREIGN KEY(movimento_id) REFERENCES movimento(movimento_id) ON DELETE CASCADE,
    FOREIGN KEY(produto_id) REFERENCES produtos(produto_id) ON DELETE CASCADE
);
