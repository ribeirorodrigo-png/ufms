# Modelagem de Banco de Dados e Versionamento de Código

Este projeto é um exemplo prático de modelagem de banco de dados relacional e controle de versão utilizando Git e GitHub. A atividade visa demonstrar como estruturar e versionar um script SQL para um sistema de pequeno comércio, como uma livraria ou cafeteria.

## 1. Modelagem do Banco de Dados

O banco de dados deste projeto contém duas tabelas principais:

- **produtos**: Armazena informações sobre os produtos vendidos.
  - `id` (INT, chave primária): Identificador único do produto.
  - `nome` (VARCHAR(100)): Nome do produto.
  - `preco` (DECIMAL(10,2)): Preço do produto.

- **pedidos**: Armazena os pedidos realizados pelos clientes.
  - `id` (INT, chave primária): Identificador do pedido.
  - `produto_id` (INT): Referência ao produto comprado.
  - `quantidade` (INT): Quantidade do produto no pedido.
  - `data_pedido` (DATE): Data em que o pedido foi realizado.
  - `FOREIGN KEY (produto_id) REFERENCES produtos(id)`: Garante o relacionamento entre pedidos e produtos.

## 2. Script SQL

O arquivo [`modelagem.sql`](modelagem.sql) contém os comandos para:

- Criar as tabelas `produtos` e `pedidos`.
- Inserir três registros de exemplo em cada tabela.

## 3. Versionamento com Git e GitHub

- O arquivo `modelagem.sql` é versionado utilizando Git.
- Um commit foi realizado com a mensagem:  
  **"Adiciona modelagem do banco de dados com tabelas de produtos e pedidos, incluindo inserção de registros de exemplo."**
- O projeto foi publicado em um repositório público no GitHub, permitindo o rastreamento das alterações e colaboração entre desenvolvedores.

## 4. Benefícios do Processo

- **Organização:** Estrutura clara dos dados para o sistema.
- **Integridade:** Relacionamento entre tabelas garante consistência.
- **Rastreabilidade:** O uso do Git/GitHub permite acompanhar todas as alterações, facilitando manutenção e colaboração.

## Como executar o script

1. Abra um gerenciador de banco de dados SQL (por exemplo, MySQL ou PostgreSQL).
2. Execute o conteúdo do arquivo [`modelagem.sql`](modelagem.sql) para criar as tabelas e inserir os registros.

---

**Dúvidas?**  
Consulte o material do módulo sobre modelagem de banco de dados e controle de versão ou entre em contato com a tutoria.
