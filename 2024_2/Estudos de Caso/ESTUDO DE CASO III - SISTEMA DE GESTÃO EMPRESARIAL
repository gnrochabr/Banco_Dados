# Estudo de Caso III: Sistema de Gestão Empresarial

A empresa **TechSolution Ltda.**, especializada em desenvolvimento de software, está enfrentando desafios para gerenciar as informações de clientes, fornecedores, empregados e produtos de forma eficaz. Para otimizar seus processos e melhorar o controle das operações, a empresa decidiu implementar um **Sistema de Gestão Empresarial Integrado**, com o objetivo de centralizar e organizar suas informações críticas, facilitando a tomada de decisões e aumentando a eficiência operacional.

## Objetivos:
- Centralizar a gestão de dados de clientes, empregados, empresas parceiras e fornecedores.
- Controlar as encomendas realizadas pelos clientes, integrando informações sobre produtos, formas de pagamento e parcelamento.
- Monitorar o estoque de componentes, uso de máquinas e recursos necessários para a fabricação dos produtos.
- Gerenciar informações detalhadas sobre endereços, tipos de componentes e outros aspectos logísticos.
- Facilitar a extração de relatórios e consultas, permitindo uma análise rápida e precisa dos dados.

## Escopo do Sistema:
O sistema abrange as seguintes entidades principais, cada uma com seus respectivos atributos e relacionamentos:

### 1. CLIENTES
- **Atributos**: Código (identificador único), CNPJ, Razão Social, Ramo de Atividade, Data de Cadastramento, Telefones (multivalorado), Endereços (multivalorado), Pessoa de Contato.
- **Descrição**: Representa as empresas que contratam os serviços da TechSolution Ltda. Cada cliente pode ter múltiplos telefones e endereços, além de estar associado a uma pessoa de contato. Os clientes estão relacionados às **encomendas**, onde cada encomenda refere-se a um único cliente.

### 2. EMPREGADOS
- **Atributos**: Matrícula (identificador único), Nome, Telefones (multivalorado), Cargo, Salário, Data de Admissão, Qualificações, Endereço.
- **Descrição**: Representa os funcionários da empresa. Cada empregado pode ter múltiplos telefones e um endereço. Além disso, podem ser responsáveis por diferentes funções, e o tempo de mão de obra para produção dos produtos é registrado no sistema.

### 3. EMPRESAS
- **Atributos**: CNPJ, Razão Social, Telefones (multivalorado), Pessoa de Contato, Endereço.
- **Descrição**: Representa outras organizações parceiras ou filiais da TechSolution Ltda., que podem atuar como clientes ou fornecedores, dependendo da relação estabelecida.

### 4. FORNECEDORES
- **Atributos**: CNPJ, Razão Social, Endereço, Telefones (multivalorado), Pessoa de Contato.
- **Descrição**: Representa as empresas que fornecem materiais e componentes necessários para a produção dos produtos. Fornecedores estão relacionados aos **componentes** no estoque da TechSolution.

### 5. TIPO DE ENDEREÇO
- **Atributos**: Código (identificador único), Nome.
- **Descrição**: Classifica os diferentes tipos de endereços (Comercial, Residencial, etc.), utilizados para categorizar os endereços de clientes, empregados, empresas e fornecedores.

### 6. ENDEREÇOS
- **Atributos**: Número, Logradouro, Complemento, CEP, Bairro, Cidade, Estado.
- **Descrição**: Detalha os locais de operação ou residência dos clientes, empregados, empresas e fornecedores, classificados por um **Tipo de Endereço**.

### 7. ENCOMENDAS
- **Atributos**: Número (identificador único), Data da Inclusão, Valor Total, Valor do Desconto, Valor Líquido, ID Forma de Pagamento, Quantidade de Parcelas.
- **Descrição**: Representa os pedidos feitos pelos clientes, contendo detalhes como valores, formas de pagamento e parcelamento. Estão relacionadas aos **produtos** encomendados.

### 8. PRODUTOS
- **Atributos**: Código (identificador único), Nome, Cor, Dimensões, Peso, Preço, Tempo de Fabricação, Desenho do Produto, Horas de Mão de Obra.
- **Descrição**: Representa os bens desenvolvidos pela TechSolution Ltda. Cada produto tem características específicas e está relacionado às **encomendas** e **componentes** utilizados.

### 9. TIPOS DE COMPONENTE
- **Atributos**: Código (identificador único), Nome.
- **Descrição**: Classifica os diferentes tipos de componentes usados na fabricação dos produtos, auxiliando no controle de estoque.

### 10. COMPONENTES
- **Atributos**: Código (identificador único), Nome, Quantidade em Estoque, Preço Unitário, Unidade.
- **Descrição**: Representa os materiais usados na fabricação dos produtos. Cada componente é fornecido por um ou mais **fornecedores** e seu estoque é monitorado.

### 11. MÁQUINAS
- **Atributos**: Tempo de Vida, Data da Compra, Data Fim da Garantia.
- **Descrição**: Representa os equipamentos utilizados na fabricação dos produtos. O controle do tempo de vida e garantia é essencial para a gestão de manutenção.

### 12. RE (Recursos Específicos)
- **Atributos**: Quantidade Necessária, Unidade, Tempo de Uso, Horas de Mão de Obra.
- **Descrição**: Representa os recursos específicos necessários para fabricar determinados produtos, como matérias-primas, tempo de uso de máquinas e horas de trabalho.

### 13. RM (Registro de Manutenção)
- **Atributos**: Data, Descrição.
- **Descrição**: Registra as manutenções realizadas nas máquinas e equipamentos, garantindo o bom funcionamento e planejamento de intervenções.

### 14. RS (Registro de Suprimentos)
- **Atributos**: Quantidade, Data de Necessidade.
- **Descrição**: Mantém o registro dos suprimentos necessários para a produção, garantindo que os materiais estejam disponíveis no momento certo para evitar atrasos.
