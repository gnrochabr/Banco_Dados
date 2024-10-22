# Estudo de Caso 1: Cadeia de Suprimentos

Uma empresa multinacional de manufatura está desenvolvendo um sistema para gerenciar sua cadeia de suprimentos, que inclui fornecedores, produtos, pedidos de compra, recebimento de materiais, inventário e distribuição para filiais. O sistema precisa centralizar e automatizar todas as operações relacionadas ao fluxo de materiais, desde o pedido inicial até a entrega final.

## Fornecedores

Os fornecedores, que são empresas parceiras responsáveis pelo fornecimento de matérias-primas e componentes, são identificados por um código único de fornecedor. O sistema deve armazenar informações como:
- Nome da empresa
- Endereço
- País de origem
- Pessoa de contato
- Telefone
- Histórico de fornecimento (ex.: datas e quantidades entregues)

Cada fornecedor pode fornecer diversos produtos diferentes, e cada produto pode ser fornecido por vários fornecedores, dependendo de contratos e acordos comerciais.

## Produtos

Os produtos são identificados por um código único e possuem atributos como:
- Nome do produto
- Descrição
- Especificações técnicas
- Unidade de medida (ex.: quilos, litros, unidades)
- Preço unitário

Para cada produto, o sistema deve também manter um registro de estoque, que inclui:
- Quantidade atual em estoque
- Localização no armazém
- Ponto de ressuprimento (nível de estoque que dispara a necessidade de novos pedidos)

## Pedidos de Compra

Os pedidos de compra são gerados quando o estoque de determinado produto atinge o ponto de ressuprimento. Cada pedido de compra é identificado por um número único e contém informações como:
- Data do pedido
- Data esperada de entrega
- Quantidade solicitada de cada produto
- Status do pedido (em processamento, enviado, recebido, cancelado)

Cada pedido de compra está associado a um único fornecedor, mas pode incluir múltiplos produtos.

## Recebimento de Materiais

O recebimento de materiais é o processo de verificação e aceitação dos produtos entregues pelo fornecedor. Quando um pedido de compra é entregue, o sistema deve registrar:
- Data de recebimento
- Quantidade recebida de cada produto
- Condição dos materiais (aceito, rejeitado)

Se um lote de materiais for rejeitado, o sistema deve registrar o motivo da rejeição e iniciar um processo de devolução ou substituição.

## Distribuição para Filiais

A distribuição dos produtos para as filiais da empresa é feita com base nas demandas de cada filial. Cada filial é identificada por um código único e possui atributos como:
- Nome
- Endereço
- Capacidade de armazenamento

O sistema deve ser capaz de registrar as transferências de produtos entre o armazém central e as filiais, bem como monitorar o inventário de cada filial.

## Objetivo

Com esses detalhes, vocês devem identificar todas as entidades envolvidas, mapear seus atributos, definir os relacionamentos e suas cardinalidades, e estabelecer as chaves primárias e estrangeiras. O objetivo é criar um **Modelo Entidade Relacionamento (MER)** e um **Diagrama de Entidade-Relacionamento (ER)** que capture todas as complexidades e interações da cadeia de suprimentos da empresa.
