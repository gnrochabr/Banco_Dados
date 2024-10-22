# Estudo de Caso: Loja Inova Tech

A loja "Inova Tech" está em plena expansão, e o crescimento no número de clientes, produtos e fornecedores tem tornado a gestão das informações um desafio. Atualmente, o controle de vendas, estoque, cadastros de clientes, fornecedores e pagamentos é feito de forma manual ou em planilhas, gerando falhas no controle de produtos, atrasos no acompanhamento de pedidos e dificuldades em monitorar o fluxo financeiro. A diretoria da loja percebeu que, para superar esses desafios, é necessário informatizar o processo e implementar um **banco de dados relacional** que permita organizar e centralizar as informações de maneira eficiente.

## Contexto
A "Inova Tech" oferece uma ampla gama de produtos, como computadores, celulares, acessórios e software. Cada cliente pode realizar compras de diferentes produtos, e a loja trabalha com diversos fornecedores para garantir a disponibilidade dos itens em estoque. A loja também oferece um **programa de fidelidade** para clientes recorrentes, que precisam ser acompanhados para oferecer promoções e vantagens exclusivas. Outro desafio é o controle dos **pagamentos** feitos por clientes, já que atualmente é difícil identificar quais transações estão pendentes ou concluídas.

Diante desse cenário, a diretoria da loja contratou uma equipe de desenvolvimento para criar um sistema de banco de dados que automatize e centralize o gerenciamento das informações. Esse banco de dados deve ser capaz de registrar e organizar:

- **Clientes**: Com informações pessoais como nome, CPF, data de nascimento, endereço, e status no programa de fidelidade.
- **Produtos**: A loja oferece diferentes categorias de produtos, e é necessário controlar quais estão disponíveis em estoque, o preço e o fornecedor de cada item.
- **Fornecedores**: A "Inova Tech" trabalha com vários fornecedores, que precisam ser registrados junto às suas informações de contato e produtos fornecidos.
- **Vendas**: Cada venda deve ser registrada, associada ao cliente, produtos comprados e forma de pagamento utilizada.
- **Pagamentos**: Controle detalhado dos pagamentos realizados pelos clientes, registrando a data, o valor e o status (pago/pendente).

## Desafios
1. **Gerenciamento de Clientes e Produtos**: Como organizar eficientemente os dados de cada cliente e vinculá-los às compras realizadas, permitindo que um cliente adquira vários produtos em uma única compra?
2. **Acompanhamento de Estoque**: Como garantir que o estoque esteja atualizado com os produtos disponíveis, evitando falta de itens e garantindo a reposição rápida junto aos fornecedores?
3. **Controle de Fornecedores**: Como organizar os fornecedores e os produtos fornecidos, de forma que seja possível saber qual fornecedor está vinculado a cada produto e manter o controle de compras e reposições?
4. **Gestão de Pagamentos**: Como registrar e acompanhar os pagamentos feitos pelos clientes, vinculando-os às vendas e garantindo o controle do fluxo financeiro da loja?
5. **Relacionamento Entre Entidades**: Como modelar adequadamente as relações entre clientes, fornecedores, produtos, vendas e pagamentos, para que a integridade dos dados seja mantida e permita consultas e relatórios detalhados?

## Tarefas da Equipe de Desenvolvimento
A equipe de desenvolvimento deverá modelar um banco de dados relacional que atenda às necessidades da loja. Esse banco de dados será projetado no **MySQL Workbench** e deverá incluir as entidades Clientes, Produtos, Fornecedores, Vendas e Pagamentos. As relações entre essas entidades devem ser cuidadosamente estruturadas para gerenciar as compras, controlar o estoque e garantir a integração correta dos dados financeiros.

Com base nas informações fornecidas, a equipe de desenvolvimento deverá:

1. **Identificar as Entidades e Atributos**: Definir as principais entidades do sistema, como Clientes, Produtos, Fornecedores, Vendas e Pagamentos, e os atributos necessários para cada uma delas.
2. **Definir os Relacionamentos**: Estabelecer os relacionamentos entre as entidades. Por exemplo, clientes devem estar associados às vendas; produtos devem estar vinculados aos fornecedores; e pagamentos devem estar relacionados às vendas e clientes.
3. **Criar o Diagrama Entidade-Relacionamento (DER)**: Utilizando o **MySQL Workbench**, a equipe deverá modelar o banco de dados, criando o DER que representa as entidades, os atributos e os relacionamentos entre elas. Esse modelo servirá como base para a implementação do banco de dados.
4. **Implementar Chaves Primárias e Estrangeiras**: Definir as chaves primárias para cada entidade e as chaves estrangeiras para garantir a integridade referencial entre as tabelas.
5. **Testar a Modelagem**: Após a criação do DER, a equipe deve garantir que o banco de dados seja capaz de armazenar todas as informações da loja e responder a consultas como:
   - Listar todos os clientes que realizaram compras de um determinado produto.
   - Verificar o estoque e os fornecedores de um produto específico.
   - Acompanhar o status de pagamento de cada venda.
   - Gerar relatórios de vendas por período e cliente.
