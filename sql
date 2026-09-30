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
produto_valor TEXT NOT NULL,
produto_unidade TEXT not NULL
);
-- Tabela de Itens do movimento 
CREATE TABLE IF NOT EXISTS movimento (
movimento_id INTEGER PRIMARY KEY,
cliente_id INTEGER NOT NULL,
movimento_data TEXT NOT NULL,
movimento_valor INTEGER NOT NULL,
FOREIGN KEY(cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);
-- Tabela de Itens do produto do movimento
CREATE TABLE IF NOT EXISTS item_movimento(
 item_id INTEGER PRIMARY KEY,
 movimento_id TEXT NOT NULL,
 produto_id TEXT not NULL,
 item_numero INTEGER not NULL,
 item_quantdade INTEGER not NULL,
 item_desconto INTEGER not NULL,
 item_valor INTEGER not NULL,
 FOREIGN KEY(movimento_id) REFERENCES movimento(movimento_id) ON DELETE CASCADE,
 FOREIGN KEY(produto_id) REFERENCES produtos(produto_id) ON DELETE CASCADE
);
